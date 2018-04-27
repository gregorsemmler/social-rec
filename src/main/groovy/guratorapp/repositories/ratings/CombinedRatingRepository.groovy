package guratorapp.repositories.ratings

import groovy.transform.CompileStatic
import guratorapp.model.Participant
import guratorapp.model.ratings.CombinedRating
import guratorapp.recommendation.model.RestaurantRatingType
import org.springframework.data.repository.CrudRepository
import org.springframework.stereotype.Repository

@CompileStatic
@Repository
interface CombinedRatingRepository extends CrudRepository<CombinedRating, Long> {
    List<CombinedRating> findByParticipantAndRestaurantRatingType(Participant participant, RestaurantRatingType restaurantRatingType)
}