package guratorapp.services.grouprecommendation

import com.sun.javaws.exceptions.InvalidArgumentException
import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.configuration.RecommenderConfiguration
import guratorapp.configuration.DelegationBasedRecommenderConfiguration
import guratorapp.model.GuratorGroup
import guratorapp.model.Participant
import guratorapp.recommendation.model.*
import guratorapp.services.GroupAnalysisService
import guratorapp.services.UserService
import guratorapp.services.ParticipantAnalysisService
import guratorapp.services.personalityanalysis.PersonalityAnalysisService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.beans.factory.annotation.Qualifier
import org.springframework.stereotype.Service
/**
 * Calculates recommendations for {@link RecommendationGroup}s while incorporating social factors.
 */
@CompileStatic
@Slf4j
@Service
class DelegationBasedGroupRecommenderService extends GroupRecommenderService{

    @Autowired
    DelegationBasedRecommenderConfiguration configuration

    @Autowired
    ParticipantAnalysisService participantAnalysisService

    @Autowired
    PersonalityAnalysisService personalityAnalysisService

    @Autowired
    DelegationBasedGroupRecommenderService(@Qualifier("DelegationBasedRecommenderConfiguration") RecommenderConfiguration configuration) {
        super(configuration, RecommenderType.DELEGATION_BASED)
    }

    /**
     * Generates a so called delegation-based rating for a supplied {@link RecommendationGroup} and a collection of
     * {@link guratorapp.recommendation.model.Restaurant}s for which the ratings are aggregated.
     *
     * The calculation is based on the following paper:
     *
     * Quijano-Sanchez, Lara; Recio-Garcia, Juan A.; Diaz-Agudo, Belen: Group recommendation methods for social network
     * environments. In: 3rd Workshop on Recommender Systems and the Social Web 5th ACM International Conference
     * on Recommender Systems, RecSys’11.
     *
     * @param group The {@link RecommendationGroup} for which the ratings are generated.
     * @param restaurants A collection of the {@link guratorapp.recommendation.model.Restaurant} for which the ratings are aggregated.
     */
    Collection<DelegationBasedRating> generateDelegationBasedRatings(RecommendationGroup group, Collection<Restaurant> restaurants) {
        if(group == null || restaurants == null || group.getUsers().isEmpty() || restaurants.isEmpty()) {
            throw new IllegalArgumentException("Group and ratings must not be null or empty")
        }

        if(!GroupAnalysisService.checkIfAllRatingsArePresent(group, restaurants)) {
            throw new IllegalArgumentException("Not all users rated all restaurants")
        }

        Collection<DelegationBasedRating> result = new ArrayList<DelegationBasedRating>()

        for(User user : group.getUsers()) {
            for(Restaurant restaurant : restaurants) {
                result.add(generateDelegationBasedRating(user, group, restaurant))
            }
        }
        return result
    }

    /**
     * Generates a so called delegation-based rating for a supplied {@link User} who is a member of a
     * {@link RecommendationGroup} a {@link Restaurant} for which the ratings are aggregated.
     *
     * The calculation is based on the following paper:
     *
     * Quijano-Sanchez, Lara; Recio-Garcia, Juan A.; Diaz-Agudo, Belen: Group recommendation methods for social network
     * environments. In: 3rd Workshop on Recommender Systems and the Social Web 5th ACM International Conference
     * on Recommender Systems, RecSys’11.
     *
     * @param user The user for which the rating is calculated
     * @param group The group which the user is a member of
     * @param restaurant The restaurant for which the rating is calculated
     * @return the calculated delegation based rating
     */
    DelegationBasedRating generateDelegationBasedRating(User user, RecommendationGroup group, Restaurant restaurant) {
        Collection<User> users = group.getUsers()
        if(users.size() < 2) {
            throw new InvalidArgumentException("Group must have at least two members")
        }
        if(! users.contains(user)) {
            throw new InvalidArgumentException("User is not member of the group")
        }

        //Assume that trust of a user to themselves is 1.0
        double totalTrust = 1.0
        double result = 0.0
        Participant from = user.participant

        for(User otherUser : users) {
            if(user == otherUser) {
                continue
            }

            Participant to = otherUser.participant
            double trust = participantAnalysisService.getTrust(from,to)
            double conflictModeWeight = personalityAnalysisService.getDelegationBasedConflictModeWeight(to)

            RestaurantRating rating = restaurant.getRatingFrom(otherUser)

            totalTrust += trust

            result += (trust * (rating.score + conflictModeWeight))
        }

        result /= Math.abs(totalTrust)

        return new DelegationBasedRating(user, group, restaurant, result)
    }

    @Override
    RecommendationGroup preTransformGroup(RecommendationGroup group, Collection<Restaurant> restaurants,
                                          RestaurantRatingType ratingType) {
        GuratorGroup guratorGroup = group.group
        RecommendationGroup newGroup = new RecommendationGroup(id : group.id, group: guratorGroup)

        for(Participant participant : guratorGroup.participants) {
            User oldUser = UserService.getUser(participant.id as Long)
            if(oldUser == null) {
                throw new RuntimeException("No user found for participant with id ${participant.id}")
            }
            User newUser = new User(id : oldUser.id, participant: oldUser.participant)

            for(Restaurant restaurant : restaurants) {
                DelegationBasedRating delegationBasedRating = generateDelegationBasedRating(oldUser, group, restaurant)
                newUser.addRating(restaurant, delegationBasedRating.score, ratingType)
            }

            newGroup.addUser(newUser)
        }

        return newGroup
    }

}
