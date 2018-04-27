package guratorapp.recommendation.aggregation

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.recommendation.model.GroupRestaurantRating
import guratorapp.recommendation.model.RecommendationGroup
import guratorapp.recommendation.model.Restaurant
import guratorapp.recommendation.model.RestaurantRating
import guratorapp.recommendation.model.User

/**
 * Restaurants are ranked as if users are picking them in turn.
 */
@CompileStatic
@Slf4j
class FairnessAggregationStrategy implements AggregationStrategy<GroupRestaurantRating,Restaurant, RecommendationGroup> {

    @Override
    Collection<GroupRestaurantRating> aggregateRatings(Collection<Restaurant> restaurants, RecommendationGroup group) {
        if(restaurants.isEmpty() || group.getUsers().isEmpty()) {
            if(restaurants.isEmpty())
                log.warn("Group does not have any rated restaurants")
            if(group.getUsers().isEmpty())
                log.warn("Group does not have any members")
            return new ArrayList<GroupRestaurantRating>(0)
        }

        int currentScore = restaurants.size() - 1
        ArrayList<GroupRestaurantRating> result = new ArrayList<>(currentScore)

        HashMap<Restaurant, Boolean> restaurantStillAvailable = new HashMap<>()
        for(Restaurant restaurant : restaurants) {
            restaurantStillAvailable[restaurant] = true
        }

        boolean anyUsersPickedNewRestaurant = true

        while(anyUsersPickedNewRestaurant) {
            anyUsersPickedNewRestaurant = false

            for(User user : group.getUsers()) {
                ArrayList<RestaurantRating> ratingsByCurrentUser =
                        new ArrayList<RestaurantRating>( user.getRatingsFromRestaurantBooleanMap(restaurantStillAvailable))
                Collections.sort(ratingsByCurrentUser, Collections.reverseOrder())

                int i = 0
                boolean newRestaurantPicked = false

                for( ; i < ratingsByCurrentUser.size(); ++i) {
                    if(restaurantStillAvailable[ratingsByCurrentUser.get(i).getRestaurant()]) {
                        newRestaurantPicked = true
                        break
                    }
                }

                anyUsersPickedNewRestaurant = anyUsersPickedNewRestaurant || newRestaurantPicked

                if(newRestaurantPicked) {
                    Restaurant r = ratingsByCurrentUser.get(i).getRestaurant()
                    restaurantStillAvailable[r] = false

                    //add users top choice that wasn't yet chosen to result
                    result.add(new GroupRestaurantRating(group,r,(double)currentScore))
                    --currentScore
                }
            }
        }

        //Add restaurants that were not picked
        for(Restaurant restaurant : restaurantStillAvailable.keySet()) {
            if(restaurantStillAvailable[restaurant]) {
                result.add(new GroupRestaurantRating(group, restaurant, Double.MIN_VALUE))
            }
        }
        Collections.sort(result, Collections.reverseOrder())

        return result
    }
}
