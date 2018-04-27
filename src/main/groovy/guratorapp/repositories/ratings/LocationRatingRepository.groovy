package guratorapp.repositories.ratings

import guratorapp.model.Participant
import guratorapp.model.RestaurantId
import guratorapp.model.ratings.LocationRating
import org.springframework.data.repository.CrudRepository

interface LocationRatingRepository extends CrudRepository<LocationRating, Long> {

    List<LocationRating> findAll()
    List<LocationRating> findByParticipantAndRestaurantId(Participant participant, RestaurantId restaurantId)

    List<LocationRating> findByParticipant(Participant participant)
}
