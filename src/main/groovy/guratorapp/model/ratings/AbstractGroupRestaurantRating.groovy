package guratorapp.model.ratings

import guratorapp.model.GuratorGroup
import guratorapp.model.RestaurantId

import javax.persistence.GeneratedValue
import javax.persistence.Id
import javax.persistence.JoinColumn
import javax.persistence.ManyToOne
import javax.persistence.MappedSuperclass

/**
 * Abstract Rating for a Restaurant by a group
 */
@MappedSuperclass
abstract class AbstractGroupRestaurantRating {
    @Id
    @GeneratedValue
    Long id

    @ManyToOne
    @JoinColumn(name = "group_id")
    GuratorGroup group

    Double score

    @ManyToOne
    @JoinColumn(name = "restaurant_id")
    RestaurantId restaurant
}
