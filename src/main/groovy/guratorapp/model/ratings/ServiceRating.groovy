package guratorapp.model.ratings

import javax.persistence.Entity
import javax.persistence.Table

/**
 * Restaurant rating for Service
 */
@Entity
@Table(name = "service_rating")
class ServiceRating extends AbstractRestaurantRating {

}
