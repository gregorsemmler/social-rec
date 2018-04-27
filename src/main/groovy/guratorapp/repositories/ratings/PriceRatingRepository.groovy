package guratorapp.repositories.ratings

import guratorapp.model.Participant
import guratorapp.model.RestaurantId
import guratorapp.model.ratings.PriceRating
import org.springframework.data.repository.CrudRepository

interface PriceRatingRepository extends CrudRepository<PriceRating, Long> {

    List<PriceRating> findAll()
    List<PriceRating> findByParticipantAndRestaurantId(Participant participant, RestaurantId restaurantId)
    List<PriceRating> findByParticipant(Participant participant)
}