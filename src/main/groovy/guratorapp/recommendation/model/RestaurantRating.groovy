package guratorapp.recommendation.model

import groovy.transform.CompileStatic

/**
 * Describes a Rating of a restaurant
 */
@CompileStatic
class RestaurantRating implements RecommendationRating<User, Restaurant>, Comparable<RestaurantRating> {
    Restaurant restaurant
    User user
    double score
    RestaurantRatingType restaurantRatingType

    public RestaurantRating(User user, Restaurant restaurant, double score) {
        this.restaurant = restaurant
        this.user = user
        this.score = score
        this.restaurantRatingType = RestaurantRatingType.AVERAGE
    }

    public RestaurantRating(User user, Restaurant restaurant, double score, RestaurantRatingType restaurantRatingType) {
        this.restaurant = restaurant
        this.user = user
        this.score = score
        this.restaurantRatingType = restaurantRatingType
    }

    public Restaurant getRestaurant() {
        return restaurant
    }

    @Override
    public User getUser() {
        return user
    }

    @Override
    public Restaurant getItem() {
        return restaurant
    }

    @Override
    public double getScore() {
        return score
    }

    @Override
    int compareTo(RestaurantRating r2) {
        if(score < r2.getScore()) {
            return -1
        }
        if(score > r2.getScore()) {
            return 1
        }
        return 0
    }

    @Override
    public String toString() {
        return "RestaurantRating{" +
                "score=" + score +
                ", restaurant=" + restaurant +
                ", user=" + user +
                ", restaurantRatingType=" + restaurantRatingType +
                '}';
    }
}
