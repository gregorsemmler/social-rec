package guratorapp.model.ratings

import javax.persistence.Entity
import javax.persistence.Table

/**
 * Restaurant rating for Taste
 */
@Entity
@Table(name = "taste_rating")
class TasteRating extends AbstractRestaurantRating {

}
