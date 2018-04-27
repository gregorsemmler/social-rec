package guratorapp.repositories.ratings

import guratorapp.model.Participant
import guratorapp.model.RestaurantId
import guratorapp.model.ratings.ServiceRating
import org.springframework.data.repository.CrudRepository

interface ServiceRatingRepository extends CrudRepository<ServiceRating, Long> {

    List<ServiceRating> findAll()
    List<ServiceRating> findByParticipantAndRestaurantId(Participant participant, RestaurantId restaurantId)
    List<ServiceRating> findByParticipant(Participant participant)
}