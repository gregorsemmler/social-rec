package guratorapp.services.grouprecommendation

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.configuration.RecommenderConfiguration
import guratorapp.model.GroupType
import guratorapp.model.GuratorGroup
import guratorapp.model.Participant
import guratorapp.model.RecommendationContext
import guratorapp.model.ratings.AbstractRestaurantRating
import guratorapp.model.ratings.GroupPredictedRating
import guratorapp.recommendation.aggregation.AggregationStrategy
import guratorapp.recommendation.aggregation.AggregationStrategyType
import guratorapp.recommendation.aggregation.ApprovalVotingAggregationStrategy
import guratorapp.recommendation.aggregation.AverageAggregationStrategy
import guratorapp.recommendation.aggregation.AverageWithoutMiseryAggregationStrategy
import guratorapp.recommendation.aggregation.BordaCountAggregationStrategy
import guratorapp.recommendation.aggregation.CopelandRuleAggregationStrategy
import guratorapp.recommendation.aggregation.FairnessAggregationStrategy
import guratorapp.recommendation.aggregation.LeastMiseryAggregationStrategy
import guratorapp.recommendation.aggregation.MaximumPleasureAggregationStrategy
import guratorapp.recommendation.aggregation.MultiplicativeAggregationStrategy
import guratorapp.recommendation.aggregation.PluralityVotingAggregationStrategy
import guratorapp.recommendation.model.*
import guratorapp.repositories.ratings.CombinedRatingRepository
import guratorapp.repositories.ratings.GroupPredictedRatingRepository
import guratorapp.services.GroupAnalysisService
import guratorapp.services.RecommendationContextService
import guratorapp.services.RestaurantService
import guratorapp.services.UserService
import org.springframework.beans.factory.annotation.Autowired

@CompileStatic
@Slf4j
abstract class GroupRecommenderService {

    RecommenderType recommenderType
    RecommenderConfiguration configuration

    @Autowired
    GroupAnalysisService groupAnalysisService
    @Autowired
    RestaurantService restaurantService
    @Autowired
    RecommendationContextService recommendationContextService

    @Autowired
    GroupPredictedRatingRepository groupPredictedRatingRepository
    @Autowired
    CombinedRatingRepository combinedRatingRepository

    protected static HashMap<Long,RecommendationGroup> groupHashMap = new HashMap<>()
    protected static Long lastUnusedId = 117
    AggregationStrategy<GroupRestaurantRating,Restaurant, RecommendationGroup> aggregationStrategy
    protected RecommendationContext currentContext

    GroupRecommenderService(RecommenderConfiguration configuration, RecommenderType recommenderType) {
        this.configuration = configuration
        this.recommenderType = recommenderType
    }

    static setGroup(Long id, RecommendationGroup group) {
        groupHashMap[id] = group
    }

    static RecommendationGroup getGroup(Long id) {
        return groupHashMap[id]
    }

    static Long getNewId() {
        while(getGroup(lastUnusedId) != null) {
            ++lastUnusedId
        }
        return lastUnusedId
    }

    void updateCurrentRecommendationContext(RestaurantRatingType ratingType, AggregationStrategyType aggregationStrategyType) {
        currentContext =
                recommendationContextService.createNewRecommendationContext(recommenderType,
                        ratingType, aggregationStrategyType)
    }

    void updateCurrentRecommendationContext(RestaurantRatingType ratingType, AggregationStrategyType aggregationStrategyType, GroupType groupType) {
        currentContext =
                recommendationContextService.createNewRecommendationContext(recommenderType, ratingType, aggregationStrategyType, groupType)
    }

    AggregationStrategy<GroupRestaurantRating,Restaurant, RecommendationGroup> getAggregationStrategy() {
        if(aggregationStrategy == null) {
            throw new RuntimeException("No Aggregation strategy set!")
        }
        return aggregationStrategy
    }

    void setAggregationStrategy(AggregationStrategyType type) {
        switch(type) {
            case AggregationStrategyType.AVERAGE: aggregationStrategy = new AverageAggregationStrategy()
                break
            case AggregationStrategyType.AVERAGE_WITHOUT_MISERY: AverageWithoutMiseryAggregationStrategy strategy = new AverageWithoutMiseryAggregationStrategy()
                if(configuration.averageWithoutMiseryMiseryThreshold != null) {
                    strategy.miseryThreshold = configuration.averageWithoutMiseryMiseryThreshold
                }
                aggregationStrategy = strategy
                break
            case AggregationStrategyType.APPROVAL_VOTING: ApprovalVotingAggregationStrategy strategy = new ApprovalVotingAggregationStrategy()
                if(configuration.approvalVotingApprovalThreshold != null) {
                    strategy.approvalThreshold = configuration.approvalVotingApprovalThreshold
                }
                aggregationStrategy = strategy
                break
            case AggregationStrategyType.BORDA_COUNT: aggregationStrategy = new BordaCountAggregationStrategy()
                break
            case AggregationStrategyType.COPELAND_RULE: aggregationStrategy = new CopelandRuleAggregationStrategy()
                break
            case AggregationStrategyType.FAIRNESS: aggregationStrategy = new FairnessAggregationStrategy()
                break
            case AggregationStrategyType.LEAST_MISERY: aggregationStrategy = new LeastMiseryAggregationStrategy()
                break
            case AggregationStrategyType.MAXIMUM_PLEASURE: aggregationStrategy = new MaximumPleasureAggregationStrategy()
                break
            case AggregationStrategyType.MULTIPLICATIVE: aggregationStrategy = new MultiplicativeAggregationStrategy()
                break
            case AggregationStrategyType.PLURALITY_VOTING: aggregationStrategy = new PluralityVotingAggregationStrategy()
                break
            default: throw new IllegalArgumentException("Could not find aggregation strategy for type ${type.name}")
        }
    }

    /**
     * Aggregates all the ratings of group members for all restaurants which were rated in a groupsurvey by the group and
     * saves them in the database as a {@link guratorapp.model.ratings.GroupPredictedRating}
     * @param groupType the type of the groups for which the aggregation should be performed
     * @param restaurantRatingType the type of restaurant rating
     */
    void recommendRatings(GroupType groupType, RestaurantRatingType restaurantRatingType) {
        Collection<GuratorGroup> groups = groupAnalysisService.getAllGroupsWithType(groupType)

        for(AggregationStrategyType aggregationType : AggregationStrategyType.values()) {
            log.info("Aggregation strategy ${aggregationType}")
            updateCurrentRecommendationContext(restaurantRatingType, aggregationType, groupType)
            aggregateAndSaveRatings(groups, aggregationType, restaurantRatingType)
        }
    }

    /**
     * Aggregates all the ratings of group members for all restaurants which were rated in a groupsurvey by the group and
     * saves them in the database as a {@link guratorapp.model.ratings.GroupPredictedRating}
     * @param groupType the type of the groups for which the aggregation should be performed
     */
    void recommendRatings(GroupType groupType) {
        Collection<GuratorGroup> groups = groupAnalysisService.getAllGroupsWithType(groupType)

        for(RestaurantRatingType restaurantRatingType : RestaurantRatingType.values()) {
            log.info("Restaurant Rating Type ${restaurantRatingType}")
            for(AggregationStrategyType aggregationType : AggregationStrategyType.values()) {
                log.info("Aggregation strategy ${aggregationType}")
                updateCurrentRecommendationContext(restaurantRatingType, aggregationType, groupType)
                aggregateAndSaveRatings(groups, aggregationType, restaurantRatingType)
            }
        }
    }

    /**
     * Aggregates all the ratings of group members for all restaurants which were rated in a groupsurvey by the group and
     * saves them in the database as a {@link guratorapp.model.ratings.GroupPredictedRating}
     * @param groupsType the type of the groups for which the aggregation should be performed
     * @param aggregationStrategyType the type of the aggregation strategy
     * @param restaurantRatingType the type of restaurant rating
     */
    void recommendRatings(GroupType groupType, AggregationStrategyType aggregationStrategyType,
                          RestaurantRatingType restaurantRatingType) {
        Collection<GuratorGroup> groups = groupAnalysisService.getAllGroupsWithType(groupType)

        updateCurrentRecommendationContext(restaurantRatingType, aggregationStrategyType, groupType)
        aggregateAndSaveRatings(groups, aggregationStrategyType, restaurantRatingType)
    }

    /**
     * Aggregates all the ratings of group members for all restaurants which were rated in a groupsurvey by the group and
     * saves them in the database as a {@link guratorapp.model.ratings.GroupPredictedRating}
     * @param groups a collection of the groups for which the aggregation should take place
     * @param aggregationStrategyType the type of the aggregation strategy
     * @param restaurantRatingType the type of restaurant rating
     */
    private void aggregateAndSaveRatings(Collection<GuratorGroup> groups, AggregationStrategyType aggregationStrategyType,
                                 RestaurantRatingType restaurantRatingType) {
        Collection<RecommendationGroup> recommendationGroups = new ArrayList<>()

        for(GuratorGroup group : groups) {
            RecommendationGroup untransformedGroup = getRecommendationGroupFromGuratorGroup(group, restaurantRatingType)
            Collection<Restaurant> restaurants = restaurantService.getAllRestaurantsRatedByGroup(group)
            RecommendationGroup transformedGroup = preTransformGroup(untransformedGroup, restaurants, restaurantRatingType)

            recommendationGroups.add(transformedGroup)
        }

        for(RecommendationGroup recommendationGroup : recommendationGroups) {
            aggregateAndSaveRatingsForAllRatedRestaurants(recommendationGroup, aggregationStrategyType)
        }
    }

    /**
     * Transforms a {@link RecommendationGroup} to a new group, adjusting the user ratings, to aggregate the user ratings
     * afterwards
     * @param group The original group
     * @param restaurants the restaurants which were rated by the group
     * @param ratingType the type of restaurant rating used for the original group
     * @return the resulting group
     */
    abstract RecommendationGroup preTransformGroup(RecommendationGroup group, Collection<Restaurant> restaurants, RestaurantRatingType ratingType)

    private void aggregateAndSaveRatingsForAllRatedRestaurants(RecommendationGroup recommendationGroup,
                                                       AggregationStrategyType aggregationStrategyType) {
        setAggregationStrategy(aggregationStrategyType)

        Collection<GroupRestaurantRating> aggregated = aggregateRatingsForAllRatedRestaurants(recommendationGroup)

        for(GroupRestaurantRating rating : aggregated) {
            GroupPredictedRating predictedRating =
                    predictedRatingFromGroupRestaurantRating(rating)
            groupPredictedRatingRepository.save(predictedRating)
        }
    }

    void recommendRatings(Integer groupId, AggregationStrategyType aggregationStrategyType,
                          RestaurantRatingType ratingType) {

        RecommendationGroup recommendationGroup = getRecommendationGroupFromGuratorGroup(groupId, ratingType)
        GuratorGroup guratorGroup = groupAnalysisService.getGroupFromId(groupId)
        Collection<Restaurant> restaurants = restaurantService.getAllRestaurantsRatedByGroup(guratorGroup)
        RecommendationGroup transformedGroup = preTransformGroup(recommendationGroup, restaurants, ratingType)

        updateCurrentRecommendationContext(ratingType, aggregationStrategyType)

        aggregateAndSaveRatingsForAllRatedRestaurants(transformedGroup, aggregationStrategyType)
    }

    private Collection<GroupRestaurantRating> aggregateAllRatings(Integer groupId, RestaurantRatingType ratingType) {

        RecommendationGroup recommendationGroup = getRecommendationGroupFromGuratorGroup(groupId, ratingType)
        GuratorGroup guratorGroup = groupAnalysisService.getGroupFromId(groupId)
        Collection<Restaurant> restaurants = restaurantService.getAllRestaurantsRatedByGroup(guratorGroup)
        RecommendationGroup transformedGroup = preTransformGroup(recommendationGroup, restaurants, ratingType)

        return aggregateRatingsForAllRatedRestaurants(transformedGroup)
    }

    private Collection<GroupRestaurantRating> aggregateRatingsForAllRatedRestaurants(RecommendationGroup recommendationGroup) {
        AggregationStrategy<GroupRestaurantRating, Restaurant, RecommendationGroup> strategy = getAggregationStrategy()

        Collection<GroupRestaurantRating> aggregated =
                strategy.aggregateRatings(restaurantService.getAllRestaurantsRatedByGroup(recommendationGroup.getGroup()),
                        recommendationGroup)

        log.info("Aggregated ratings for recommendationGroup with id ${recommendationGroup.id}")

        return aggregated

    }

    RecommendationGroup getRecommendationGroupFromGuratorGroup(Integer id, RestaurantRatingType ratingType) {
        GuratorGroup g = groupAnalysisService.getGroupFromId(id)
        return getRecommendationGroupFromGuratorGroup(g, ratingType)
    }

    RecommendationGroup getRecommendationGroupFromGuratorGroup(GuratorGroup group, RestaurantRatingType ratingType) {
        RecommendationGroup result = new RecommendationGroup(id : group.id, group: group)

        for(Participant participant : group.participants) {
            User user = UserService.getUser(participant.id as Long)
            if(user == null) {
                throw new RuntimeException("No user found for participant with id ${participant.id}")
            }

            setAllParticipantRatingsForRestaurantsToUser(user, result, ratingType)
            result.addUser(user)
        }

        return result
    }

    Collection<GroupRestaurantRating> convertToGroupRestaurantRatings(Collection<GroupPredictedRating> ratings) {
        Collection<GroupRestaurantRating> result = new ArrayList<>(ratings.size())
        for(GroupPredictedRating rating : ratings) {
            result.add(convertToGroupRestaurantRating(rating))
        }
        return result
    }

    GroupRestaurantRating convertToGroupRestaurantRating(GroupPredictedRating abstractRating) {

        RecommendationGroup recommendationGroup = getGroup(abstractRating.group.id as Long)
        GroupRestaurantRating result = new GroupRestaurantRating(recommendationGroup,
                restaurantService.getRestaurant(abstractRating.restaurant.id), abstractRating.score)
        result.ratingEntity = abstractRating
        return result
    }

    protected GroupPredictedRating predictedRatingFromGroupRestaurantRating(GroupRestaurantRating groupRestaurantRating) {

        GroupPredictedRating predictedRating = new GroupPredictedRating()
        predictedRating.recommendationContext = currentContext
        predictedRating.group = groupRestaurantRating.group.group
        predictedRating.restaurant = restaurantService.getRestaurantId(groupRestaurantRating.restaurant)
        predictedRating.score = groupRestaurantRating.score

        return predictedRating

    }

    void setAllParticipantRatingsForRestaurantsToUser(User user, RecommendationGroup group, RestaurantRatingType ratingType) {
        user.removeAllRatings()

        Collection<AbstractRestaurantRating> ratings = getAllRatingsFromDatabase(user.participant, ratingType)
        for(AbstractRestaurantRating abstractRating : ratings) {
            Restaurant restaurant = restaurantService.getRestaurant(abstractRating.restaurantId.id)

            user.addRating(restaurant, abstractRating.score, ratingType)
        }
    }

    Collection<AbstractRestaurantRating> getAllRatingsFromDatabase(Participant participant, RestaurantRatingType restaurantRatingType) {

        return combinedRatingRepository.findByParticipantAndRestaurantRatingType(participant, restaurantRatingType) as Collection<AbstractRestaurantRating>
    }

    static Map<Restaurant, GroupRestaurantRating> nonDuplicateCollectionToMap(Collection<GroupRestaurantRating> ratings) {
        HashMap<Restaurant, GroupRestaurantRating> result = new HashMap<>()

        for(GroupRestaurantRating rating : ratings) {
            if(result.containsKey(rating.restaurant)) {
                throw new RuntimeException("Supplied collection was not duplicate free!")
            }
            result[rating.restaurant] = rating
        }

        return result
    }
}
