package guratorapp.repositories.ratings

import guratorapp.model.Participant
import guratorapp.model.RestaurantId
import guratorapp.model.ratings.HippienessRating
import org.springframework.data.repository.CrudRepository

interface HippienessRatingRepository extends CrudRepository<HippienessRating, Long> {

    List<HippienessRating> findAll()
    List<HippienessRating> findByParticipantAndRestaurantId(Participant participant, RestaurantId restaurantId)

    List<HippienessRating> findByParticipant(Participant participant)
}