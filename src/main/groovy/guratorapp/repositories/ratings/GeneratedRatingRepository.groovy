package guratorapp.repositories.ratings

import groovy.transform.CompileStatic
import guratorapp.model.Participant
import guratorapp.model.ratings.GeneratedRating
import org.springframework.data.repository.CrudRepository
import org.springframework.stereotype.Repository

@CompileStatic
@Repository
interface GeneratedRatingRepository extends CrudRepository<GeneratedRating, Long> {
    List<GeneratedRating> findByParticipant(Participant participant)
}