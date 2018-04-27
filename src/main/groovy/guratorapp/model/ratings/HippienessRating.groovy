package guratorapp.model.ratings

import javax.persistence.Entity
import javax.persistence.Table

/**
 * Restaurant rating for Hippieness.
 */
@Entity
@Table(name = "hippieness_rating")
class HippienessRating extends AbstractRestaurantRating {

}