package guratorapp.model.ratings

import javax.persistence.Entity
import javax.persistence.Table

/**
 * Restaurant rating for SocialOverlap
 */
@Entity
@Table(name = "social_overlap_rating")
class SocialOverlapRating extends AbstractRestaurantRating {

}
