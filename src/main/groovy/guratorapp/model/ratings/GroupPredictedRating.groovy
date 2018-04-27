package guratorapp.model.ratings

import guratorapp.model.RecommendationContext

import javax.persistence.Entity
import javax.persistence.JoinColumn
import javax.persistence.ManyToOne
import javax.persistence.Table
/**
 * Predicted Rating for a Restaurant by a group
 */
@Entity
@Table(name = "group_predicted_rating")
class GroupPredictedRating extends AbstractGroupRestaurantRating {

    @ManyToOne
    @JoinColumn(name = "recommendation_context_id")
    RecommendationContext recommendationContext

    @Override
    String toString() {
        return "GroupPredictedRating{" +
                "group=" + group +
                ", score=" + score +
                ", restaurant=" + restaurant +
                '}';
    }
}
