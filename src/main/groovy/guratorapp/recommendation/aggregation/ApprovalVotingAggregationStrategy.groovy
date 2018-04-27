package guratorapp.recommendation.aggregation

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.recommendation.model.GroupRestaurantRating
import guratorapp.recommendation.model.RecommendationGroup
import guratorapp.recommendation.model.Restaurant
import guratorapp.recommendation.model.RestaurantRating
/**
 * Assigns to a {@link Restaurant} a score corresponding to the number of group members who gave it a score above a
 * previously defined approval threshold.
 */
@CompileStatic
@Slf4j
class ApprovalVotingAggregationStrategy implements AggregationStrategy<GroupRestaurantRating,Restaurant, RecommendationGroup> {

    public Double approvalThreshold = 50 as double

    @Override
    Collection<GroupRestaurantRating> aggregateRatings(Collection<Restaurant> restaurants, RecommendationGroup group) {
        if(restaurants.isEmpty() || group.getUsers().isEmpty()) {
            if(restaurants.isEmpty())
                log.warn("Group does not have any rated restaurants")
            if(group.getUsers().isEmpty())
                log.warn("Group does not have any members")
            return new ArrayList<GroupRestaurantRating>(0)
        }

        HashMap<Restaurant, Double> restaurantScores = new HashMap<>()
        for(Restaurant restaurant : restaurants) {
            restaurantScores[restaurant] = 0.0 as double
        }


        for(Restaurant restaurant : restaurants) {
            Collection<RestaurantRating> ratingsFromGroupMembers = restaurant.getRatingsFrom(group.getUsers())
            if(ratingsFromGroupMembers.size() != group.getUsers().size()) {
                log.warn("Number of users does not equal number of ratings for restaurant " +
                        "${restaurant.getRecommendationItemId()} and Group ${group.getRecommendationUserId()}")
            }

            for(RestaurantRating rating : ratingsFromGroupMembers) {
                if(rating.getScore() >= approvalThreshold) {
                    restaurantScores[restaurant] += 1.0 as double
                }
            }
        }

        ArrayList<GroupRestaurantRating> result = new ArrayList<>()
        for(Restaurant restaurant : restaurants) {
            result.add(new GroupRestaurantRating(group, restaurant, restaurantScores[restaurant]))
        }
        Collections.sort(result, Collections.reverseOrder())
        return result
    }
}
