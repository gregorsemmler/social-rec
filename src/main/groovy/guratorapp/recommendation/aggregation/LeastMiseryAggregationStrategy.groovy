package guratorapp.recommendation.aggregation

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.recommendation.model.RecommendationGroup
import guratorapp.recommendation.model.GroupRestaurantRating
import guratorapp.recommendation.model.Restaurant
import guratorapp.recommendation.model.RestaurantRating

/**
 * Assigns to a {@link Restaurant} the minimal score it received by any of the group members.
 */
@CompileStatic
@Slf4j
class LeastMiseryAggregationStrategy implements AggregationStrategy<GroupRestaurantRating,Restaurant, RecommendationGroup>{

    @Override
    Collection<GroupRestaurantRating> aggregateRatings(Collection<Restaurant> restaurants, RecommendationGroup group) {
        if(restaurants.isEmpty() || group.getUsers().isEmpty()) {
            if(restaurants.isEmpty())
                log.warn("Group does not have any rated restaurants")
            if(group.getUsers().isEmpty())
                log.warn("Group does not have any members")
            return new ArrayList<GroupRestaurantRating>(0)
        }

        ArrayList<GroupRestaurantRating> result = new ArrayList<>()
        Double minimumScore

        for(Restaurant restaurant : restaurants) {
            minimumScore = Double.MAX_VALUE

            Collection<RestaurantRating> groupRatings = restaurant.getRatingsFrom(group.getUsers())

            if(group.getUsers().size() != groupRatings.size()) {
                log.warn("Number of users in group ${group.id} does not equal the number of ratings for " +
                        "restaurant ${restaurant.getRecommendationItemId()} ")
            }

            for(RestaurantRating rating : groupRatings) {
                if(minimumScore > rating.getScore()) {
                    minimumScore = rating.getScore()
                }
            }
            result.add(new GroupRestaurantRating(group, restaurant, minimumScore))
        }
        Collections.sort(result, Collections.reverseOrder())
        return result
    }
}
