package guratorapp.repositories

import guratorapp.model.Participant
import guratorapp.model.RestaurantSurvey
import org.springframework.data.repository.CrudRepository
import org.springframework.stereotype.Repository

@Repository
interface RestaurantSurveyRepository extends CrudRepository<RestaurantSurvey,Integer>{
    List<RestaurantSurvey> findAll()

    List<RestaurantSurvey> findByParticipantAndRestaurantYelpId(Participant participant, String restaurantYelpId)
}