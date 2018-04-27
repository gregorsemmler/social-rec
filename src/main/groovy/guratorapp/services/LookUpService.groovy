package guratorapp.services

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.model.*
import guratorapp.model.ratings.*
import guratorapp.recommendation.model.RecommendationGroup
import guratorapp.recommendation.model.Restaurant
import guratorapp.recommendation.model.User
import guratorapp.repositories.*
import guratorapp.repositories.ratings.*
import guratorapp.services.grouprecommendation.GroupRecommenderService
import guratorapp.services.grouprecommendation.StandardGroupRecommenderService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

import javax.annotation.PostConstruct
/**
 * Creates Maps to be able to lookup {@link User} {@link Restaurant} {@link guratorapp.model.GuratorGroup} application wide by id
 */
@CompileStatic
@Slf4j
@Service
class LookUpService {

    @Autowired
    RestaurantService restaurantService
    @Autowired
    UserService userService
    @Autowired
    StandardGroupRecommenderService standardGroupRecommender

    @Autowired
    ParticipantRepository participantRepository
    @Autowired
    GroupTypeRepository groupTypeRepository

    @Autowired
    GroupRepository groupRepository

    @Autowired
    RestaurantSurveyRepository restaurantSurveyRepository

    @Autowired
    RestaurantIdRepository restaurantIdRepository

    @Autowired
    AverageRatingRepository restaurantAverageRatingRepository
    @Autowired
    TasteRatingRepository restaurantTasteRatingRepository
    @Autowired
    PriceRatingRepository restaurantPriceRatingRepository
    @Autowired
    LocationRatingRepository restaurantLocationRatingRepository
    @Autowired
    HippienessRatingRepository restaurantHippienessRatingRepository
    @Autowired
    SocialOverlapRatingRepository restaurantSocialOverlapRatingRepository
    @Autowired
    ClumsinessRatingRepository restaurantClumsinessRatingRepository
    @Autowired
    ServiceRatingRepository restaurantServiceRatingRepository

    @Autowired
    PersonalityRepository personalityRepository


    @PostConstruct
    void initialize() {
        saveDefaultEntities()
        loadUserLookup()
        loadGroupLookup()
        loadRestaurantLookup()
    }

    /**
     * Checks if certain default values are stored in the database. If not they are saved.
     */
    void saveDefaultEntities() {
        log.info("Saving default entities into database")
        log.info("Default GroupTypes")
        if( groupTypeRepository.findById(GroupType.INTERNAL_GROUP.id) == null) {
            groupTypeRepository.save(GroupType.INTERNAL_GROUP)
        }
        if( groupTypeRepository.findById(GroupType.EXTERNAL_GROUP.id) == null) {
            groupTypeRepository.save(GroupType.EXTERNAL_GROUP)
        }
        if( groupTypeRepository.findById(GroupType.MIXED_GROUP.id) == null) {
            groupTypeRepository.save(GroupType.MIXED_GROUP)
        }
        if( groupTypeRepository.findById(GroupType.GENERATED_SUBGROUP.id) == null) {
            groupTypeRepository.save(GroupType.GENERATED_SUBGROUP)
        }
        log.info("Default Participants")
        if(participantRepository.findById(Participant.GROUP_GENERATOR.id) == null) {
            participantRepository.save(Participant.GROUP_GENERATOR)
        }
        log.info("Finished saving default entities")
    }

    void loadUserLookup() {
        log.info("Initializing User lookup")

        List<Participant> participants = participantRepository.findAll()

        for(Participant participant : participants) {
            User user = new User([id : participant.id, participant : participant])
            userService.setUser((Long)user.id, user)
        }
        log.info("Added User objects to lookup")
    }

    void loadGroupLookup() {
        log.info("Initializing Group lookup")

        List<GuratorGroup> groups = groupRepository.findAll()

        for(GuratorGroup group : groups) {
            RecommendationGroup recommendationGroup = new RecommendationGroup([id : group.id])

            for(Participant participant : group.participants) {
                recommendationGroup.addUser(userService.getUser(participant.id as Long) as User)
            }

            GroupRecommenderService.setGroup(recommendationGroup.id, recommendationGroup)
        }

        log.info("Added group objects to lookup")
    }

    void loadRestaurantLookup() {
        log.info("Initializing Restaurant Id lookup")
        List<RestaurantId> ids = restaurantIdRepository.findAll()

        for(RestaurantId restaurantId : ids) {
            restaurantService.setLongIdForYelpId(restaurantId.id, restaurantId.yelpId)
        }

        log.info("Adding new Restaurant Objects to lookup table")
        for(RestaurantId restaurantId : ids) {
            restaurantService.setRestaurant(restaurantId.id, new Restaurant([id : restaurantId.id]))
        }
    }

    //TODO move
    void saveRestaurantRatingsInDatabase() {
        log.info("Retrieving restaurant surveys")

        List<RestaurantSurvey> surveys = restaurantSurveyRepository.findAll()

        log.info("Saving individual ratings")

        for(RestaurantSurvey survey : surveys) {

            double taste = survey.taste as double
            double price = survey.price as double
            double clumsiness = survey.clumsiness as double
            double service = survey.service as double
            double hippieness = survey.hippieness as double
            double location = survey.location as double
            double socialOverlap = survey.socialOverlap as double

            double average = (taste+price+clumsiness+service+hippieness+location+socialOverlap) / 7.0

            RestaurantId restaurantId = restaurantIdRepository.findByYelpId(survey.restaurantYelpId)

            TasteRating tasteRating =
                    new TasteRating([participant: survey.participant, score: taste, restaurantId: restaurantId])
            PriceRating priceRating =
                    new PriceRating([participant: survey.participant, score: price, restaurantId: restaurantId])
            ClumsinessRating clumsinessRating =
                    new ClumsinessRating([participant: survey.participant, score: clumsiness, restaurantId: restaurantId])
            ServiceRating serviceRating =
                    new ServiceRating([participant: survey.participant, score: service, restaurantId: restaurantId])
            HippienessRating hippienessRating =
                    new HippienessRating([participant: survey.participant, score: hippieness, restaurantId: restaurantId])
            LocationRating locationRating =
                    new LocationRating([participant: survey.participant, score: location, restaurantId: restaurantId])
            SocialOverlapRating socialOverlapRating =
                    new SocialOverlapRating([participant: survey.participant, score: socialOverlap, restaurantId: restaurantId])

            AverageRating averageRating =
                    new AverageRating([participant: survey.participant, score: average, restaurantId: restaurantId])

            restaurantTasteRatingRepository.save(tasteRating)
            restaurantPriceRatingRepository.save(priceRating)
            restaurantClumsinessRatingRepository.save(clumsinessRating)
            restaurantServiceRatingRepository.save(serviceRating)
            restaurantHippienessRatingRepository.save(hippienessRating)
            restaurantLocationRatingRepository.save(locationRating)
            restaurantSocialOverlapRatingRepository.save(socialOverlapRating)

            restaurantAverageRatingRepository.save(averageRating)
        }

        log.info("Saved individual ratings")

    }
}
