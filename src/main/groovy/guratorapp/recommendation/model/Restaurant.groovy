package guratorapp.recommendation.model

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j

@CompileStatic
@Slf4j
public class Restaurant implements RecommendationItem {
    long id
    HashMap<User,RestaurantRating> ratingsByUser = new HashMap<>()

    @Override
    long getRecommendationItemId() {
        return id
    }

    @Override
    Collection<RecommendationRating> getRatings() {
        return getRatingsFrom(ratingsByUser.keySet())
    }

    public Collection<User> getUsersWhoRated() {
        return ratingsByUser.keySet()
    }

    void addRating(User user, double score) {
        addRating(user, score, RestaurantRatingType.AVERAGE)
    }

    void addRating(User user, double score, RestaurantRatingType restaurantRatingType) {
        ratingsByUser[user] = new RestaurantRating(user, this, score, restaurantRatingType)
    }

    void removeRatingFrom(User user) {
        ratingsByUser.remove(user)
    }

    public Collection<RestaurantRating> getRatingsFrom(Collection<User> users) {
        ArrayList<RestaurantRating> result = new ArrayList<>()

        for(User u : users) {
            if(ratingsByUser[u] == null) {
                log.warn("Could not find a rating for restaurant ${getRecommendationItemId()} " +
                        "from User ${u.getRecommendationUserId()} !")
                continue
            }
            result.add(ratingsByUser[u])
        }
        return result
    }

    public RestaurantRating getRatingFrom(User user) {
        return ratingsByUser[user]
    }

    boolean hasRatingFrom(User user) {
        return ratingsByUser[user] != null
    }

    boolean equals(o) {
        if (this.is(o)) return true
        if (getClass() != o.class) return false

        Restaurant that = (Restaurant) o

        if (id != that.id) return false

        return true
    }

    int hashCode() {
        return (int) (id ^ (id >>> 32))
    }

    @Override
    public String toString() {
        return "Restaurant{" +
                "id=" + id +
                '}';
    }
}
