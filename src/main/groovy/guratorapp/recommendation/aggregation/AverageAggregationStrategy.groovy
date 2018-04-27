package guratorapp.recommendation.aggregation

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.recommendation.model.RecommendationGroup
import guratorapp.recommendation.model.RecommendationRating
import guratorapp.recommendation.model.Restaurant
import guratorapp.recommendation.model.GroupRestaurantRating
import guratorapp.recommendation.model.RestaurantRating
import guratorapp.recommendation.model.User

/**
 * Averages the given {@link RecommendationRating}s of the group members
 */
@CompileStatic
@Slf4j
public class AverageAggregationStrategy implements AggregationStrategy<GroupRestaurantRating,Restaurant, RecommendationGroup> {

    /**
     * Averages the given ratingsByUser
     * @param TODO
     * @return TODO
     */
    @Override
    public Collection<GroupRestaurantRating> aggregateRatings(Collection<Restaurant> restaurants, RecommendationGroup group) {
        if(restaurants.isEmpty() || group.getUsers().isEmpty()) {
            if(restaurants.isEmpty())
                log.warn("Group does not have any rated restaurants")
            if(group.getUsers().isEmpty())
                log.warn("Group does not have any members")
            return new ArrayList<GroupRestaurantRating>(0)
        }

        ArrayList<GroupRestaurantRating> result = new ArrayList<GroupRestaurantRating>()

        double score = 0.0
        Collection<User> users = group.getUsers()
        Collection<RestaurantRating> ratingsFromGroupMembers

        for(Restaurant restaurant : restaurants) {
            score = 0.0

            //only get ratings from the members of the group
            ratingsFromGroupMembers = restaurant.getRatingsFrom(users)

            if(ratingsFromGroupMembers.size() != users.size()) {
                log.warn("Number of users does not equal number of ratings for restaurant " +
                        "${restaurant.getRecommendationItemId()} and Group ${group.getRecommendationUserId()}")
            }

            for(RestaurantRating rating : ratingsFromGroupMembers) {
                score += rating.getScore()
            }
            score /= ratingsFromGroupMembers.size()

            result.add(new GroupRestaurantRating (group, restaurant, score ))
        }

        log.info("Ratings for Group ${group.recommendationUserId} aggregated.")
        Collections.sort(result, Collections.reverseOrder())
        return result
    }

}
