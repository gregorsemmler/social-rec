package guratorapp.model

import groovy.transform.CompileStatic

import javax.persistence.Entity
import javax.persistence.FetchType
import javax.persistence.GeneratedValue
import javax.persistence.GenerationType
import javax.persistence.Id
import javax.persistence.JoinColumn
import javax.persistence.ManyToOne
import javax.persistence.Table

/**
 * A RestaurantSurvey in the GuratorApp Context.
 */
@CompileStatic
@Entity
@Table(name = "grouprestaurantsurvey")
class GroupRestaurantSurvey {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    Integer id
    String restaurantYelpId
    Integer price
    Integer taste
    Integer clumsiness
    Integer service
    Integer hippieness
    Integer location
    Integer socialOverlap
    String other

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "group_id")
    GuratorGroup group
}
