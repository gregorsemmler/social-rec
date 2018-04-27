package guratorapp.recommendation.aggregation

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.recommendation.model.RecommendationGroup
import guratorapp.recommendation.model.GroupRestaurantRating
import guratorapp.recommendation.model.Restaurant
import guratorapp.recommendation.model.RestaurantRating
import guratorapp.recommendation.model.User

/**
 * Counts points from the restaurants' ratings in Users preference list, with the bottom restaurant getting 0 point,
 * and every higher restaurant 1 point more than the previous.
 */
@CompileStatic
@Slf4j
class BordaCountAggregationStrategy implements AggregationStrategy<GroupRestaurantRating,Restaurant, RecommendationGroup> {

    @Override
    Collection<GroupRestaurantRating> aggregateRatings(Collection<Restaurant> restaurants, RecommendationGroup group) {
        if(restaurants.isEmpty() || group.getUsers().isEmpty()) {
            if(restaurants.isEmpty())
                log.warn("Group does not have any rated restaurants")
            if(group.getUsers().isEmpty())
                log.warn("Group does not have any members")
            return new ArrayList<GroupRestaurantRating>(0)
        }

        HashMap<Restaurant, Double> restaurantHashMap = new HashMap<>()
        for(Restaurant restaurant : restaurants) {
            restaurantHashMap[restaurant] = 0.0 as double
        }

        for(User user : group.getUsers()) {
            ArrayList<RestaurantRating> ratingsByCurrentUser =
                    new ArrayList<RestaurantRating>( user.getRatings(restaurantHashMap))
            Collections.sort(ratingsByCurrentUser)

            if(ratingsByCurrentUser.size() != restaurants.size()) {
                log.warn("Number of ratings by user ${user.id} does not equal the number of restaurants")
            }

            //Accounting for ties: If i>1 number of items share the same score, instead of randomly picking one of them
            //as the next one (to receive +1), increase all of their scores by 1/i.
            double currentUserScore = -1.0
            int sameScoreIndex
            int currentItemIndex = 0
            int numItems = ratingsByCurrentUser.size()

            while(currentItemIndex < numItems) {

                sameScoreIndex = currentItemIndex
                //Walk through the array as long as we encounter restaurants with the same score
                while(sameScoreIndex + 1 < numItems && ratingsByCurrentUser.get(sameScoreIndex + 1).getScore() ==
                    ratingsByCurrentUser.get(currentItemIndex).getScore()) {
                    ++sameScoreIndex
                }

                //split the score if multiple items have the same score
                int numSameScoredItems = sameScoreIndex - currentItemIndex + 1
                double currentlyAssignedScore
                if(currentUserScore < 0.0) {
                    currentlyAssignedScore = 0.0
                } else {
                    currentlyAssignedScore =  1 / (numSameScoredItems as double) + currentUserScore
                }

                for(int i=currentItemIndex; i <= sameScoreIndex; ++i) {
                    restaurantHashMap[ratingsByCurrentUser.get(i).getRestaurant()] =
                        restaurantHashMap[ratingsByCurrentUser.get(i).getRestaurant()] + currentlyAssignedScore
                }

                currentItemIndex = sameScoreIndex + 1
                currentUserScore += 1.0
            }

        }

        ArrayList<GroupRestaurantRating> result = new ArrayList<GroupRestaurantRating>()

        for(Restaurant restaurant : restaurants) {
            result.add(new GroupRestaurantRating(group, restaurant, restaurantHashMap[restaurant]))
        }
        Collections.sort(result, Collections.reverseOrder())
        return result
    }
}
