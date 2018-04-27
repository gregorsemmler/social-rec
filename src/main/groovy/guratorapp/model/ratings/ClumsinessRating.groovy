package guratorapp.model.ratings

import javax.persistence.Entity
import javax.persistence.Table

/**
 * Rating for Clumsiness Rating.
 */
@Entity
@Table(name = "clumsiness_rating")
class ClumsinessRating extends AbstractRestaurantRating{

}
