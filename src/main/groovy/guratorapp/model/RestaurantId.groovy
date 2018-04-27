package guratorapp.model

import groovy.transform.CompileStatic

import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.GenerationType
import javax.persistence.Id
import javax.persistence.Table

/**
 * Used to assign a numeric Id to a restaurant.
 */
@CompileStatic
@Entity
@Table(name = "restaurantid")
class RestaurantId {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    Long id

    @Column(unique = true, nullable = false)
    String yelpId

    @Override
    String toString() {
        return "RestaurantId{" +
                "id=" + id +
                ", yelpId='" + yelpId + '\'' +
                '}';
    }
}
