package guratorapp.model.ratings

import javax.persistence.Entity
import javax.persistence.Table

/**
 * Restaurant rating for Price
 */
@Entity
@Table(name = "price_rating")
class PriceRating extends AbstractRestaurantRating {

}
