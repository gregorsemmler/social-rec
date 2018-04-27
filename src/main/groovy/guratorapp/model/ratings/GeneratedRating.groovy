package guratorapp.model.ratings

import groovy.transform.CompileStatic
import guratorapp.recommendation.model.RestaurantRatingType

import javax.persistence.Entity
import javax.persistence.EnumType
import javax.persistence.Enumerated
import javax.persistence.Lob
import javax.persistence.Table
import java.time.ZonedDateTime

@CompileStatic
@Entity
@Table(name = "generated_rating")
class GeneratedRating extends AbstractRestaurantRating {
    @Enumerated(EnumType.STRING)
    RestaurantRatingType restaurantRatingType

    ZonedDateTime createdAt

    @Lob
    String details

    String toString() {
        return "GeneratedRating{" +
                "participant=" + participant +
                ", score=" + score +
                ", restaurantId=" + restaurantId +
                ', restaurantRatingType=' + restaurantRatingType +
                '}'
    }
}
