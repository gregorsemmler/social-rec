package guratorapp.repositories.ratings

import guratorapp.model.Participant
import guratorapp.model.RestaurantId
import guratorapp.model.ratings.SocialOverlapRating
import org.springframework.data.repository.CrudRepository

interface SocialOverlapRatingRepository extends CrudRepository<SocialOverlapRating, Long> {

    List<SocialOverlapRating> findAll()
    List<SocialOverlapRating> findByParticipantAndRestaurantId(Participant participant, RestaurantId restaurantId)
    List<SocialOverlapRating> findByParticipant(Participant participant)
}