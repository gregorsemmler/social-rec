package guratorapp.model

import groovy.transform.CompileStatic
import guratorapp.recommendation.model.RestaurantRatingType

import javax.persistence.Entity
import javax.persistence.FetchType
import javax.persistence.Id
import javax.persistence.JoinColumn
import javax.persistence.ManyToOne
import javax.persistence.Table

/**
 * Survey of a Restaurant in the GuratorApp context.
 */
@CompileStatic
@Entity
@Table(name = "restaurantsurvey")
class RestaurantSurvey {
    @Id
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

    @ManyToOne(fetch = FetchType.EAGER )
    @JoinColumn(name = "participant_id")
    Participant participant

    double getScoreByType(RestaurantRatingType restaurantRatingType) {

        switch(restaurantRatingType) {
            case RestaurantRatingType.AVERAGE:
                return ((taste+price+service+clumsiness+hippieness+location+socialOverlap) as double)/7
            case RestaurantRatingType.CLUMSINESS:
                return clumsiness as double
            case RestaurantRatingType.HIPPIENESS:
                return hippieness as double
            case RestaurantRatingType.LOCATION:
                return location as double
            case RestaurantRatingType.PRICE:
                return price as double
            case RestaurantRatingType.SOCIAL_OVERLAP:
                return socialOverlap as double
            case RestaurantRatingType.SERVICE:
                return service as double
            case RestaurantRatingType.TASTE:
                return taste as double
            default:
                throw new IllegalArgumentException("Unknown RestaurantRatingType")
        }
    }
}
