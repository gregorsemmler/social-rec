package guratorapp.repositories

import groovy.transform.CompileStatic
import guratorapp.model.GroupMembership
import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.CrudRepository
import org.springframework.data.repository.query.Param
import org.springframework.stereotype.Repository

@CompileStatic
@Repository
interface GroupMembershipRepository extends CrudRepository<GroupMembership, Integer>{

    @Query("select m.groupId from GroupMembership m where m.participantId = :pId")
    Set<Integer> findGroupIdsByParticipantId(@Param("pId") Integer participantId)
}