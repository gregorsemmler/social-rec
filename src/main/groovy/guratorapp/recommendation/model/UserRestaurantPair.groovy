package guratorapp.recommendation.model

import com.fasterxml.jackson.annotation.JsonIgnore
import com.fasterxml.jackson.annotation.JsonProperty

/**
 * Pair of a {@link User} and a {@link Restaurant}
 */
class UserRestaurantPair {
    @JsonIgnore
    User user

    @JsonIgnore
    Restaurant restaurant

    @JsonProperty(value = "userId")
    public Long getUserId() {
        return user.id
    }

    @JsonProperty(value = "restaurantId")
    public Long getRestaurantId() {
        return restaurant.id
    }

    boolean equals(o) {
        if (this.is(o)) return true
        if (getClass() != o.class) return false

        UserRestaurantPair that = (UserRestaurantPair) o

        if (restaurant != that.restaurant) return false
        if (user != that.user) return false

        return true
    }

    int hashCode() {
        int result
        result = user.hashCode()
        result = 31 * result + restaurant.hashCode()
        return result
    }
}
