package guratorapp.recommendation.aggregation

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.recommendation.model.RecommendationGroup
import guratorapp.recommendation.model.GroupRestaurantRating
import guratorapp.recommendation.model.Restaurant
import guratorapp.recommendation.model.RestaurantRating
import guratorapp.recommendation.model.User

/**
 * Uses first-past-the-post voting. This means that a {@link Restaurant} receives a score corresponding to the number
 * of times it received the maximal score by a {@link User} . This is repeated  for multiple rounds until all Restaurants
 * have received a score.
 */
@CompileStatic
@Slf4j
class PluralityVotingAggregationStrategy implements AggregationStrategy<GroupRestaurantRating,Restaurant, RecommendationGroup>{

    private Map<User, Double> calculateCurrentMaxScores(Collection<User> users, Map<Restaurant, Boolean> restaurants) {
        HashMap<User, Double> currentMaxScore = new HashMap<>()

        double maxScore
        for(User user : users) {
            maxScore = Double.MIN_VALUE
            Collection<RestaurantRating> ratings = user.getRatingsFromRestaurantBooleanMap(restaurants)

            for(RestaurantRating rating : ratings) {
                if(rating.getScore() > maxScore) {
                    maxScore = rating.getScore()
                }
            }

            currentMaxScore[user] = maxScore
        }

        return currentMaxScore
    }

    private Map<Restaurant, Long> generateNewScoreBoard(Map<Restaurant, Boolean> restaurants) {
        HashMap<Restaurant, Long> result = new HashMap<>()

        for(Restaurant restaurant : restaurants.keySet()) {
            if(restaurants[restaurant]) {
                result[restaurant] = 0 as Long
            }
        }

        return result
    }

    @Override
    Collection<GroupRestaurantRating> aggregateRatings(Collection<Restaurant> restaurants, RecommendationGroup group) {
        if(restaurants.isEmpty() || group.getUsers().isEmpty()) {
            if(restaurants.isEmpty())
                log.warn("Group does not have any rated restaurants")
            if(group.getUsers().isEmpty())
                log.warn("Group does not have any members")
            return new ArrayList<GroupRestaurantRating>(0)
        }

        Collection<User> users = group.getUsers()
        HashMap<Restaurant, Boolean> remainingRestaurants = new HashMap<>()

        ArrayList<GroupRestaurantRating> result = new ArrayList<>()

        double maxFinalScore = restaurants.size() as double

        for(Restaurant restaurant : restaurants) {
            remainingRestaurants[restaurant] = true
        }

        while(result.size() < restaurants.size()) {
            Map<User, Double> currentMaxScore = calculateCurrentMaxScores(users, remainingRestaurants)
            Map<Restaurant, Long> currentScoreBoard = generateNewScoreBoard(remainingRestaurants)

            for (Restaurant restaurant : remainingRestaurants.keySet()) {
                Collection<RestaurantRating> ratingsForRestaurant = restaurant.getRatingsFrom(users)

                if (ratingsForRestaurant.size() != users.size()) {
                    log.warn("Number of ratings for restaurant ${restaurant.getRecommendationItemId()} does not equal " +
                            "the number of users for group ${group.getRecommendationUserId()}")
                }

                for (User user : users) {
                    RestaurantRating currentRating = restaurant.getRatingFrom(user)
                    if (currentRating.getScore() == currentMaxScore[user]) {
                        currentScoreBoard[restaurant] = currentScoreBoard[restaurant] + (1 as Long)
                    }
                }
            }

            Restaurant highestScored = null
            Long highScore = Long.MIN_VALUE
            for (Restaurant restaurant : currentScoreBoard.keySet()) {
                if (currentScoreBoard[restaurant] > highScore) {
                    highestScored = restaurant
                    highScore = currentScoreBoard[restaurant]
                }
            }

            if (highestScored == null) {
                throw new RuntimeException("Highest Scored Restaurant is null")
            }

            result.add(new GroupRestaurantRating(group, highestScored, maxFinalScore))
            remainingRestaurants.remove(highestScored)
            maxFinalScore -= 1.0
        }

        return result
    }
}
