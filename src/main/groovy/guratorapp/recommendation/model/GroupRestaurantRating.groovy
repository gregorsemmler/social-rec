package guratorapp.recommendation.model

import com.fasterxml.jackson.annotation.JsonIgnore
import com.fasterxml.jackson.annotation.JsonProperty
import guratorapp.model.ratings.GroupPredictedRating

public class GroupRestaurantRating implements RecommendationRating<RecommendationGroup, Restaurant>,
        Comparable<GroupRestaurantRating> {
    @JsonIgnore
    RecommendationGroup group
    @JsonIgnore
    Restaurant restaurant
    @JsonIgnore
    GroupPredictedRating ratingEntity
    double score

    public GroupRestaurantRating(RecommendationGroup group, Restaurant restaurant, double score) {
        this.restaurant = restaurant
        this.group = group
        this.score = score
    }

    @JsonIgnore
    @Override
    RecommendationGroup getUser() {
        return group
    }

    @JsonIgnore
    @Override
    Restaurant getItem() {
        return restaurant
    }

    @JsonProperty(value = "restaurantId")
    Long getRestaurantId() {
        return restaurant.id
    }

    @JsonProperty(value = "groupId")
    Integer getGroupId() {
        return group.id
    }

    @Override
    double getScore() {
        return score
    }

    @Override
    int compareTo(GroupRestaurantRating r2) {
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
        return "GroupRestaurantRating{" +
                "group=" + group +
                ", restaurant=" + restaurant +
                ", score=" + score +
                '}';
    }
}
