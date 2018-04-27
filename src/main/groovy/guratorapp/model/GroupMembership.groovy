package guratorapp.model

import groovy.transform.CompileStatic

import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.Id
import javax.persistence.Table

/**
 * Contains membership information of a {@link Participant} being a member of a {@link GuratorGroup}
 */
@CompileStatic
@Entity
@Table(name = "groupparticipant")
class GroupMembership {
    @Id
    Integer id

    @Column(name = "group_id")
    Integer groupId

    @Column(name = "participant_id")
    Integer participantId

    boolean equals(o) {
        if (this.is(o)) return true
        if (getClass() != o.class) return false

        GroupMembership that = (GroupMembership) o

        if (groupId != that.groupId) return false
        if (participantId != that.participantId) return false

        return true
    }

    int hashCode() {
        int result
        result = groupId.hashCode()
        result = 31 * result + participantId.hashCode()
        return result
    }
}
