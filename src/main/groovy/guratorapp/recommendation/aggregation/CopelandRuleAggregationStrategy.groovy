package guratorapp.recommendation.aggregation

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.recommendation.model.RecommendationGroup
import guratorapp.recommendation.model.GroupRestaurantRating
import guratorapp.recommendation.model.Restaurant
import guratorapp.recommendation.model.RestaurantRating
import guratorapp.recommendation.model.User

/**
 * Counts how often a {@link Restaurant} beats another one by majority vote. This value minus the number of times it
 * loses against another one gives the resulting final score.
 */
@CompileStatic
@Slf4j
class CopelandRuleAggregationStrategy implements AggregationStrategy<GroupRestaurantRating,Restaurant, RecommendationGroup> {

    @Override
    Collection<GroupRestaurantRating> aggregateRatings(Collection<Restaurant> restaurants, RecommendationGroup group) {
        if(restaurants.isEmpty() || group.getUsers().isEmpty()) {
            if(restaurants.isEmpty())
                log.warn("Group does not have any rated restaurants")
            if(group.getUsers().isEmpty())
                log.warn("Group does not have any members")
            return new ArrayList<GroupRestaurantRating>(0)
        }

        ArrayList<HashMap<Restaurant, Long>> majorityRatings = new ArrayList<>(restaurants.size())
        ArrayList<GroupRestaurantRating> result = new ArrayList<>(restaurants.size())

        Restaurant[] restaurantArray = (Restaurant[]) restaurants.toArray()
        for(int i = 0; i < restaurantArray.length; ++i) {
            majorityRatings.add(new HashMap<Restaurant, Long>())
        }

        //For each Restaurant create a hashMap with an double entry for each other restaurant. It stores the Majority-Rating
        //Order the Restaurants in a fixed Order (e.g. Restaurants A,.... Z).
        //For Each Restaurant loopRestaurant
        //  For each User
        //      For Each Restaurant Other that comes after loopRestaurant in the given order (e.g. for A check B... Z)
        //          Compare with the Other Restaurant if you have a higher score. If yes add +1 in loopRestaurant[other] and -1 in Other[loopRestaurant]
        //          If you have a lower score than Other add +1 in Other[loopRestaurant] and -1 in loopRestaurant[Other]
        //For Each Restaurant loopRestaurant
        //  Loop Over All Restaurants Other that follow in the fixed Order
        //      Restaurant loopRestaurant wins against Restaurant Other if > groups.users.size() times loopRestaurant has achieved a higher majority-rating
        //      than Other. In that case add +1 to loopRestaurant's final score and add -1 to Other's final score.. If it loses add -1 to loopRestaurant's final score and add +1 to Other's final score.


        for(int loopIndex = 0; loopIndex < restaurantArray.length; ++loopIndex) {
            Restaurant loopRestaurant = restaurantArray[loopIndex]

            for(User user : group.getUsers()) {

                RestaurantRating thisRating = loopRestaurant.getRatingFrom(user)

                if(thisRating == null) {
                    log.error("No rating for restaurant ${loopRestaurant.id} from User ${user.getId()} found!")
                    throw new IllegalArgumentException("No rating for restaurant ${loopRestaurant.id} from User ${user.getId()} found!")
                }

                for(int otherIndex = loopIndex+1; otherIndex < restaurantArray.length; ++otherIndex) {

                    Restaurant otherRestaurant = restaurantArray[otherIndex]
                    RestaurantRating otherRating = otherRestaurant.getRatingFrom(user)

                    if(otherRating == null) {
                        log.error("No rating for restaurant ${otherRestaurant.id} from User ${user.getId()} found!")
                        throw new IllegalArgumentException("No rating for restaurant ${otherRestaurant.id} from User ${user.getId()} found!")
                    }

                    HashMap<Restaurant, Long> loopMap = majorityRatings.get(loopIndex) as HashMap<Restaurant, Long>
                    HashMap<Restaurant, Long> otherMap = majorityRatings.get(otherIndex) as HashMap<Restaurant, Long>

                    //Initialize Maps if necessary
                    if(loopMap[otherRestaurant] == null) {
                        loopMap[otherRestaurant] = (Long)0
                    }
                    if(otherMap[loopRestaurant] == null) {
                        otherMap[loopRestaurant] = (Long)0
                    }

                    //assign scores for majority vote
                    if(thisRating.getScore() > otherRating.getScore()) {
                        loopMap[otherRestaurant] = loopMap[otherRestaurant] + (Long)1
                        otherMap[loopRestaurant] = otherMap[loopRestaurant] - (Long)1
                    } else if(thisRating.getScore() < otherRating.getScore()) {
                        otherMap[loopRestaurant] = otherMap[loopRestaurant] + (Long)1
                        loopMap[otherRestaurant] = loopMap[otherRestaurant] - (Long)1
                    }
                }
            }
        }

        //Loop again to check the winners and losers for each match up.
        for(int loopIndex = 0; loopIndex < restaurantArray.length; ++loopIndex) {
            Restaurant loopRestaurant = restaurantArray[loopIndex]
            HashMap<Restaurant, Long> loopVotings = majorityRatings.get(loopIndex) as HashMap<Restaurant, Long>
            double finalLoopScore = 0.0

            for(Restaurant otherRestaurant : loopVotings.keySet()) {
                if(loopVotings[otherRestaurant] > 0) {
                    finalLoopScore += 1.0
                } else if(loopVotings[otherRestaurant] < 0) {
                    finalLoopScore -= 1.0
                }
            }

            result.add(new GroupRestaurantRating(group, loopRestaurant, finalLoopScore))
        }

        Collections.sort(result, Collections.reverseOrder())
        return result
    }
}
