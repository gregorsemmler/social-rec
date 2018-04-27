package guratorapp.repositories

import guratorapp.model.Participant
import org.springframework.data.repository.CrudRepository
import org.springframework.stereotype.Repository

@Repository
interface ParticipantRepository extends CrudRepository<Participant,Long> {

    List<Participant> findByName(String name)
    List<Participant> findByIsInternal(Boolean isInternal)
    List<Participant> findAll()
    Participant findById(Integer id)

}