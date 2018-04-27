package guratorapp.recommendation.aggregation

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.recommendation.model.RecommendationGroup
import guratorapp.recommendation.model.GroupRestaurantRating
import guratorapp.recommendation.model.Restaurant
import guratorapp.recommendation.model.RestaurantRating
import guratorapp.recommendation.model.User

/**
 * For a {@link Restaurant} , first all Restaurants are discarded which received a rating below a misery threshold by
 * at least one group member. Then the ratings for the remaining {@link Restaurant}s are averaged.
 */
@CompileStatic
@Slf4j
class AverageWithoutMiseryAggregationStrategy implements AggregationStrategy<GroupRestaurantRating,Restaurant, RecommendationGroup> {
    public Double miseryThreshold = 33.33 as double

    @Override
    Collection<GroupRestaurantRating> aggregateRatings(Collection<Restaurant> restaurants, RecommendationGroup group) {
        if(restaurants.isEmpty() || group.getUsers().isEmpty()) {
            if(restaurants.isEmpty())
                log.warn("Group does not have any rated restaurants")
            if(group.getUsers().isEmpty())
                log.warn("Group does not have any members")
            return new ArrayList<GroupRestaurantRating>(0)
        }

        ArrayList<Restaurant> remainingRestaurants = new ArrayList<>()
        ArrayList<Restaurant> miseryRestaurants = new ArrayList<>()

        //remove all Restaurants that have received a rating below miseryThreshold
        Double minimumScore

        for(Restaurant restaurant : restaurants) {
            minimumScore = Double.MAX_VALUE
            for(RestaurantRating rating : restaurant.getRatingsFrom(group.getUsers())) {
                if(minimumScore > rating.getScore()) {
                    minimumScore = rating.getScore()
                }
            }
            if(minimumScore >= miseryThreshold) {
                remainingRestaurants.add(restaurant)
            } else {
                miseryRestaurants.add(restaurant)
            }
        }

        //Calculate Average over remaining restaurants
        ArrayList<GroupRestaurantRating> result = new ArrayList<GroupRestaurantRating>()

        double score = 0.0
        double miseryScore = 0.0
        Collection<User> users = group.getUsers()
        Collection<RestaurantRating> ratingsFromGroupMembers

        for(Restaurant restaurant : remainingRestaurants) {
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

            if(score < miseryScore) {
                miseryScore = score
            }

            result.add(new GroupRestaurantRating (group, restaurant, score ))
        }

        miseryScore = miseryScore - 1.0

        //Add Restaurants that were below the misery threshold with minimum score
        for(Restaurant restaurant : miseryRestaurants) {
            result.add(new GroupRestaurantRating(group, restaurant, miseryScore))
        }

        log.info("Ratings for Group ${group.recommendationUserId} aggregated.")
        Collections.sort(result, Collections.reverseOrder())
        return result
    }
}
