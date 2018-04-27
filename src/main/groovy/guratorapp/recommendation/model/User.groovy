package guratorapp.recommendation.model

import guratorapp.model.Participant

/**
 * An abstract user in the Recommendation context. Corresponds to a {@link Participant} here.
 */
class User implements RecommendationUser{
    private long id

    private HashMap<Restaurant, RestaurantRating> ratings = new HashMap<>()

    Participant participant

    //Here participant.id and User.id have to be the same!
    public Long getId() {
        return id
    }

    public Participant getParticipant() {
        if(participant == null) {
            throw new RuntimeException("User ${id} has no participant assigned to it.")
        }
        return participant
    }

    @Override
    long getRecommendationUserId() {
        return id
    }

    @Override
    Collection<RestaurantRating> getRatings() {
        return ratings.values()
    }

    Collection<Restaurant> getAllRatedRestaurants() {
        return ratings.keySet()
    }

    /**
     * Returns all Ratings by this user that were given to a series of restaurants
     * @param restaurantMap the restaurants supplied as entries of a {@link Map}
     * @return
     */
    Collection<RestaurantRating> getRatings(Map<Restaurant, ?> restaurantMap) {
        ArrayList<RestaurantRating> result = new ArrayList<>()

        for(RestaurantRating rating : ratings.values()) {
            if(restaurantMap.containsKey(rating.getRestaurant())) {
                result.add(rating)
            }
        }
        return result
    }

    /**
     * Returns all Ratings by this user that were given to a series of restaurants
     * @param restaurantMap the restaurants supplied as entries of a {@link Map}
     * @return
     */
    Collection<RestaurantRating> getRatingsFromRestaurantBooleanMap(Map<Restaurant, Boolean> restaurantMap) {
        ArrayList<RestaurantRating> result = new ArrayList<>()

        for(RestaurantRating rating : ratings.values()) {
            if(restaurantMap.containsKey(rating.getRestaurant()) && restaurantMap[rating.getRestaurant()]) {
                result.add(rating)
            }
        }
        return result
    }

    public void addRating(Restaurant restaurant, double score) {
        addRating(restaurant, score, RestaurantRatingType.AVERAGE)
    }

    public void removeRating(Restaurant restaurant) {
        ratings.remove(restaurant)
        restaurant.removeRatingFrom(this)
    }

    public void removeAllRatings() {
        ratings = new HashMap<>()
    }

    public void addRating(Restaurant restaurant, double score, RestaurantRatingType restaurantRatingType) {
        ratings[restaurant] = new RestaurantRating(this, restaurant, score, restaurantRatingType)
        restaurant.addRating(this, score, restaurantRatingType)
    }

    @Override
    boolean equals(o) {
        if (this.is(o)) return true
        if (getClass() != o.class) return false

        User user = (User) o

        if (id != user.id) return false

        return true
    }

    @Override
    int hashCode() {
        return (int) (id ^ (id >>> 32))
    }

    @Override
    String toString() {
        return "User{" +
                "id=" + id +
                '}';
    }
}
