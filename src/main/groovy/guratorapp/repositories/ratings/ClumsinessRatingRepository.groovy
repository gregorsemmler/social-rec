package guratorapp.repositories.ratings

import guratorapp.model.Participant
import guratorapp.model.RestaurantId
import guratorapp.model.ratings.ClumsinessRating
import org.springframework.data.repository.CrudRepository

interface ClumsinessRatingRepository extends CrudRepository<ClumsinessRating, Long> {

    List<ClumsinessRating> findAll()
    List<ClumsinessRating> findByParticipantAndRestaurantId(Participant participant, RestaurantId restaurantId)

    List<ClumsinessRating> findByParticipant(Participant participant)
}