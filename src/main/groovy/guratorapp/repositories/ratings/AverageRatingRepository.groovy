package guratorapp.repositories.ratings

import guratorapp.model.Participant
import guratorapp.model.ratings.AverageRating
import guratorapp.model.RestaurantId
import org.springframework.data.repository.CrudRepository

interface AverageRatingRepository extends CrudRepository<AverageRating, Long>{

    List<AverageRating> findAll()

    List<AverageRating> findByParticipant(Participant participant)
    List<AverageRating> findByParticipantAndRestaurantId(Participant participant, RestaurantId restaurantId)
}
