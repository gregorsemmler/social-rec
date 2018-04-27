package guratorapp.model.ratings

import javax.persistence.Entity
import javax.persistence.Table

/**
 * Rating Entity for Average
 */
@Entity
@Table(name = "average_rating")
class AverageRating extends AbstractRestaurantRating{

}
