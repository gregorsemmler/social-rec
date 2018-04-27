package guratorapp.repositories

import guratorapp.model.Participant
import guratorapp.model.Personality
import org.springframework.data.repository.CrudRepository
import org.springframework.stereotype.Repository

@Repository
interface PersonalityRepository extends CrudRepository<Personality,Integer> {
    Personality findByParticipant(Participant participant)
}