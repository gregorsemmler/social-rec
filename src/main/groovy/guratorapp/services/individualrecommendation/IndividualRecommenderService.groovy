package guratorapp.services.individualrecommendation

import com.fasterxml.jackson.databind.ObjectMapper
import com.sun.javaws.exceptions.InvalidArgumentException
import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.configuration.IndividualRecommenderConfiguration
import guratorapp.recommendation.model.RestaurantRatingType
import guratorapp.recommendation.model.User
import guratorapp.services.RestaurantService
import guratorapp.services.UserService
import org.grouplens.lenskit.ItemRecommender
import org.grouplens.lenskit.ItemScorer
import org.grouplens.lenskit.RatingPredictor
import org.grouplens.lenskit.baseline.BaselineScorer
import org.grouplens.lenskit.baseline.ItemMeanRatingItemScorer
import org.grouplens.lenskit.baseline.UserMeanItemScorer
import org.grouplens.lenskit.core.LenskitConfiguration
import org.grouplens.lenskit.core.LenskitRecommender
import org.grouplens.lenskit.core.LenskitRecommenderEngine
import org.grouplens.lenskit.core.ModelDisposition
import org.grouplens.lenskit.data.sql.BasicSQLStatementFactory
import org.grouplens.lenskit.data.sql.JDBCRatingDAO
import org.grouplens.lenskit.knn.NeighborhoodSize
import org.grouplens.lenskit.knn.item.ItemItemScorer
import org.grouplens.lenskit.knn.user.UserUserItemScorer
import org.grouplens.lenskit.scored.ScoredId
import org.grouplens.lenskit.transform.normalize.BaselineSubtractingUserVectorNormalizer
import org.grouplens.lenskit.transform.normalize.MeanCenteringVectorNormalizer
import org.grouplens.lenskit.transform.normalize.UserVectorNormalizer
import org.grouplens.lenskit.transform.normalize.VectorNormalizer
import org.grouplens.lenskit.vectors.SparseVector
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.beans.factory.annotation.Value
import org.springframework.stereotype.Service

import javax.annotation.PostConstruct
import javax.servlet.http.HttpServletResponse
import java.sql.Connection
import java.sql.DriverManager
/**
 * Recommends items to {@link User}s
 */
@CompileStatic
@Slf4j
@Service
class IndividualRecommenderService {

    private static int numberOfUserUserNeighbors = 30
    private static int numberOfItemItemNeighbors = 20
    private static IndividualRecommenderType individualRecommenderType =
            IndividualRecommenderType.USER_USER_COLLABORATIVE_FILTERING

    @Value('${spring.datasource.url}')
    private final String databaseUrl
    @Value('${spring.datasource.username}')
    private final String databaseUser
    @Value('${spring.datasource.password}')
    private final String databasePassword
    private Connection currentConnection

    @Autowired
    IndividualRecommenderConfiguration configuration

    @Autowired
    ObjectMapper mapper

    @Autowired
    UserService userService

    @Autowired
    RestaurantService restaurantService

    @PostConstruct
    private void initialize() {
        loadConfiguration()
    }

    /**
     * Open a new connection, closing the currentOne if one is currently is set and open
     */
    void openConnection(){
        closeConnection()
        currentConnection = DriverManager.getConnection(databaseUrl, databaseUser, databasePassword)
    }

    /**
     * Closes the current database connection if it is currently set and open
     */
    void closeConnection() {
        if(currentConnection != null && !currentConnection.isClosed())
            currentConnection.close()
    }

    static int getNumberOfUserUserNeighbors() {
        return numberOfUserUserNeighbors
    }

    static IndividualRecommenderType getRecommenderType() {
        return individualRecommenderType
    }

    /**
     * Gets several details about the configuration of the individual recommendation process at the time of execution
     * and formats them as a string
     * @return the resulting string
     */
    String getConfigurationDetails() {
        return configuration.toString()
    }

    /**
     * Returns a score that is within the bounds of the minimal and maximal score as defined in the
     * {@link IndividualRecommenderConfiguration}.
     * @param inputScore the input score
     * @return the resulting score which is in a valid range
     */
    double transformToValidScore(double inputScore) {
        if(inputScore < configuration.getMinimalPossibleScore())
            return configuration.getMinimalPossibleScore()
        if(inputScore > configuration.getMaximalPossibleScore())
            return configuration.getMaximalPossibleScore()
        return inputScore
    }

    /**
     * Loads configuration from the {@link IndividualRecommenderConfiguration} component.
     */
    void loadConfiguration() {
        if(configuration.numberOfUserUserNeighbors != null) {
            numberOfUserUserNeighbors = configuration.numberOfUserUserNeighbors
        }

        if(configuration.numberOfItemItemNeighbors != null) {
            numberOfItemItemNeighbors = configuration.numberOfItemItemNeighbors
        }

        if(configuration.individualRecommenderType != null) {
            individualRecommenderType = configuration.individualRecommenderType
        }
    }

    /**
     * Returns a new {@link LenskitRecommender} according to the set type.
     * ( {@link IndividualRecommenderService#individualRecommenderType} )
     * @param individualRecommenderType they type of individual recommender
     * @param restaurantRatingType the rating type which should be considered for the recommender
     * @return the resulting Recommender
     */
    LenskitRecommender getRecommender(RestaurantRatingType restaurantRatingType) {
        if(individualRecommenderType == IndividualRecommenderType.USER_USER_COLLABORATIVE_FILTERING) {
            return getUserUserCollaborativeFilteringRecommender(numberOfUserUserNeighbors, restaurantRatingType)
        } else if(individualRecommenderType == IndividualRecommenderType.ITEM_ITEM_COLLABORATIVE_FILTERING) {
            return getItemItemCollaborativeFilteringRecommender(numberOfItemItemNeighbors, restaurantRatingType)
        }
        throw new InvalidArgumentException("Unrecognized type ${individualRecommenderType}")
    }

    /**
     * Creates a LensKitRecommenderEngine for a Item Item Neighborhood Collaborative Filtering with Mean-Centered Cosine Similarity
     * @param numberOfNeighbors the number of Neighbors to be considered in the approach
     * @see <a href=http://lenskit.org/documentation/algorithms/item-item/>Algorithm Information</a>
     * @return the resulting {@link LenskitRecommenderEngine}
     */
    LenskitRecommenderEngine getItemItemCollaborativeFilteringRecommenderEngine(int numberOfNeighbors) {
        LenskitConfiguration configuration = new LenskitConfiguration()
        configuration.bind(ItemScorer.class).to(ItemItemScorer.class)
        configuration.bind(BaselineScorer.class, ItemScorer.class).to(ItemMeanRatingItemScorer.class)
        configuration.bind(UserVectorNormalizer.class).to(BaselineSubtractingUserVectorNormalizer.class)
        configuration.set(NeighborhoodSize.class).to(numberOfNeighbors)

        openConnection()
        BasicSQLStatementFactory statementFactory = new BasicSQLStatementFactory()
        //Here dummy table details have to be set to avoid an exception
        statementFactory.setTableName("taste_rating")
        statementFactory.setItemColumn("restaurant_id")
        statementFactory.setUserColumn("participant_id")
        statementFactory.setRatingColumn("score")
        statementFactory.setTimestampColumn(null)

        JDBCRatingDAO dao = new JDBCRatingDAO(currentConnection, statementFactory)
        LenskitConfiguration dataConfiguration = new LenskitConfiguration()
        dataConfiguration.addComponent(dao)

        return LenskitRecommenderEngine.newBuilder().addConfiguration(configuration)
                .addConfiguration(dataConfiguration, ModelDisposition.EXCLUDED)
                .build()
    }

    /**
     * Creates a LensKitRecommenderEngine for a User User Neighborhood Collaborative Filtering with Mean-Centered Cosine Similarity
     * @param numberOfNeighbors the number of Neighbors to be considered in the approach
     * @see <a href=http://lenskit.org/documentation/algorithms/user-user/>Algorithm Information</a>
     * @return the resulting {@link LenskitRecommenderEngine}
     */
    LenskitRecommenderEngine getUserUserCollaborativeFilteringRecommenderEngine(int numberOfNeighbors) {
        LenskitConfiguration configuration = new LenskitConfiguration()
        configuration.bind(ItemScorer.class).to(UserUserItemScorer.class)
        configuration.bind(BaselineScorer.class, ItemScorer.class).to(UserMeanItemScorer.class)
        configuration.within(UserVectorNormalizer.class).bind(VectorNormalizer.class).to(MeanCenteringVectorNormalizer.class)
        configuration.set(NeighborhoodSize.class).to(numberOfNeighbors)

        openConnection()
        BasicSQLStatementFactory statementFactory = new BasicSQLStatementFactory()
        //Here dummy table details have to be set to avoid an exception
        statementFactory.setTableName("taste_rating")
        statementFactory.setItemColumn("restaurant_id")
        statementFactory.setUserColumn("participant_id")
        statementFactory.setRatingColumn("score")
        statementFactory.setTimestampColumn(null)

        JDBCRatingDAO dao = new JDBCRatingDAO(currentConnection, statementFactory)
        LenskitConfiguration dataConfiguration = new LenskitConfiguration()
        dataConfiguration.addComponent(dao)

        return LenskitRecommenderEngine.newBuilder().addConfiguration(configuration)
                    .addConfiguration(dataConfiguration, ModelDisposition.EXCLUDED)
                    .build()
    }

    /**
     * Creates a {@link LenskitRecommender} from a supplied {@link LenskitRecommenderEngine}
     * @param engine the recommender engine
     * @param restaurantRatingType the type of restaurant rating to be used
     * @return the resulting recommender
     */
    LenskitRecommender getRecommenderFromEngine(LenskitRecommenderEngine engine,
                                                           RestaurantRatingType restaurantRatingType) {
        openConnection()

        BasicSQLStatementFactory statementFactory = new BasicSQLStatementFactory()
        statementFactory.setTableName("${restaurantRatingType.name}_rating")
        statementFactory.setItemColumn("restaurant_id")
        statementFactory.setUserColumn("participant_id")
        statementFactory.setRatingColumn("score")
        statementFactory.setTimestampColumn(null)

        JDBCRatingDAO dao = new JDBCRatingDAO(currentConnection, statementFactory)

        LenskitConfiguration configuration = new LenskitConfiguration()
        configuration.addComponent(dao)

        return engine.createRecommender(configuration)
    }

    /**
     * Creates a Item-Item collaborative filtering Lenskit Recommender
     * @param numberofNeighbors the number of neighbors of the User-User collaborative filtering recommender
     * @param restaurantRatingType the type of restaurant rating
     * @return the resulting recommender
     */
    LenskitRecommender getItemItemCollaborativeFilteringRecommender(int numberofNeighbors, RestaurantRatingType restaurantRatingType) {
        LenskitRecommenderEngine engine = getItemItemCollaborativeFilteringRecommenderEngine(numberofNeighbors)
        return getRecommenderFromEngine(engine, restaurantRatingType)
    }

    /**
     * Creates a User-User collaborative filtering Lenskit Recommender
     * @param numberofNeighbors the number of neighbors of the User-User collaborative filtering recommender
     * @param restaurantRatingType the type of restaurant rating
     * @return the resulting recommender
     */
    LenskitRecommender getUserUserCollaborativeFilteringRecommender(int numberofNeighbors, RestaurantRatingType restaurantRatingType) {
        LenskitRecommenderEngine engine = getUserUserCollaborativeFilteringRecommenderEngine(numberofNeighbors)
        return getRecommenderFromEngine(engine, restaurantRatingType)
    }

    /**
     * Recommends to a user a series of items. The resulting scores are not yet normalized, i.e. they may be below
     * the minimal or above the maximal score from the configuration.
     * @param userId the id of the user
     * @param restaurantRatingType the type of restaurant rating to be used
     * @return a list of the resulting {@link ScoredId}
     */
     List<ScoredId> recommendItemsToUser(Long userId, RestaurantRatingType restaurantRatingType) {
        log.info("Creating RecommenderEngine")

        LenskitRecommender recommender = getRecommender(restaurantRatingType)

        ItemRecommender itemRecommender = recommender.getItemRecommender()

        List<ScoredId> items = itemRecommender.recommend(userId)

        log.info("Recommended Items for User")
        return items
    }

    /**
     * Predicts the rating of an item to a user. The resulting score is not yet normalized, i.e. it may be below
     * the minimal or above the maximal score from the configuration.
     * @param userId the id of the user
     * @param itemId the id of the item
     * @param restaurantRatingType the type of restaurant rating to be used
     * @return the resulting score
     */
    double predictItemRating(Long userId, Long itemId, RestaurantRatingType restaurantRatingType) {
        log.info("Creating RecommenderEngine")

        LenskitRecommender recommender = getRecommender(restaurantRatingType)

        RatingPredictor ratingPredictor = recommender.getRatingPredictor()

        log.info("Predicting Item")
        return ratingPredictor.predict(userId, itemId)
    }

    /**
     * Predicts the scores for a series of supplied item ids for a specific user. The resulting score is not yet normalized,
     * i.e. it may be below the minimal or above the maximal score from the configuration.
     * @param userId the id of the user
     * @param itemIds a collection of the item ids
     * @param restaurantRatingType the type of restaurant rating to be used
     * @return the resulting scores as a {@link SparseVector}
     */
    SparseVector predictItemRatings(Long userId, Collection<Long> itemIds, RestaurantRatingType restaurantRatingType) {
        log.info("Creating RecommenderEngine")

        LenskitRecommender recommender = getRecommender(restaurantRatingType)

        RatingPredictor ratingPredictor = recommender.getRatingPredictor()

        log.info("Predicting Items")
        SparseVector predictions = ratingPredictor.predict(userId, itemIds)

        return predictions

    }

    /**
     * Recommends items to a user id and formats it as a JSON-string. The resulting scores are not yet normalized, i.e. they may be below
     * the minimal or above the maximal score from the configuration.
     * @param userId the id of the user
     * @param restaurantRatingType the type of restaurant rating to be used
     * @param response the HTTP response object
     * @return the resulting string formatted as JSON
     */
    String recommendItemsToUserAsJson(Long userId, RestaurantRatingType restaurantRatingType, HttpServletResponse response) {
        List<ScoredId> items = recommendItemsToUser(userId,restaurantRatingType)

        ArrayList<Object> result = []
        for(ScoredId item : items) {
            result.add(["restaurantId" : item.getId(), "score" : item.getScore()])
        }
        response.setContentType("application/json")
        return mapper.writeValueAsString(result)
    }

}
