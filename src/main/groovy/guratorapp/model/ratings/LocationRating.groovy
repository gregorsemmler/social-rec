package guratorapp.model.ratings

import javax.persistence.Entity
import javax.persistence.Table

/**
 * Restaurant rating for Location
 */
@Entity
@Table(name = "location_rating")
class LocationRating extends AbstractRestaurantRating{

}