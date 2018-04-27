package guratorapp.model.ratings

import guratorapp.model.Participant
import guratorapp.model.RestaurantId

import javax.persistence.GeneratedValue
import javax.persistence.Id
import javax.persistence.JoinColumn
import javax.persistence.ManyToOne
import javax.persistence.MappedSuperclass

/**
 * Abstract Rating for a Restaurant
 */
@MappedSuperclass
abstract class AbstractRestaurantRating {
    @Id
    @GeneratedValue
    Long id

    @ManyToOne
    @JoinColumn(name = "participant_id")
    Participant participant

    Double score

    @ManyToOne
    @JoinColumn(name = "restaurant_id")
    RestaurantId restaurantId

    @Override
    String toString() {
        return "AbstractRestaurantRating{" +
                "participant=" + participant +
                ", score=" + score +
                ", restaurantId=" + restaurantId +
                '}'
    }
}
