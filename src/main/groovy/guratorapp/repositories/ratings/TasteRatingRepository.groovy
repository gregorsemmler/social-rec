package guratorapp.repositories.ratings

import guratorapp.model.Participant
import guratorapp.model.RestaurantId
import guratorapp.model.ratings.TasteRating
import org.springframework.data.repository.CrudRepository

interface TasteRatingRepository extends CrudRepository<TasteRating, Long> {

    List<TasteRating> findAll()
    List<TasteRating> findByParticipantAndRestaurantId(Participant participant, RestaurantId restaurantId)
    List<TasteRating> findByParticipant(Participant participant)
}
