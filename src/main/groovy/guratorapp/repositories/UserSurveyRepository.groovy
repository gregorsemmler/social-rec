package guratorapp.repositories

import guratorapp.model.Participant
import guratorapp.model.UserSurvey
import org.springframework.data.repository.CrudRepository
import org.springframework.stereotype.Repository

@Repository
interface UserSurveyRepository extends CrudRepository<UserSurvey,Integer> {
    List<UserSurvey> findAll()

    List<UserSurvey> findByFromParticipant(Participant participant)

    UserSurvey findByFromParticipantAndToParticipant(Participant from, Participant to)
}