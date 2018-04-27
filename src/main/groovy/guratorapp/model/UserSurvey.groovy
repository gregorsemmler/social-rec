package guratorapp.model

import groovy.transform.CompileStatic

import javax.persistence.Entity
import javax.persistence.FetchType
import javax.persistence.Id
import javax.persistence.JoinColumn
import javax.persistence.ManyToOne
import javax.persistence.Table

/**
 * A survey of one {@link Participant} to another in the GuratorApp context.
 */
@CompileStatic
@Entity
@Table(name = "usersurvey")
class UserSurvey {
    @Id
    Integer id
    Integer socialCapital
    Integer tieStrength
    Integer socialSimilarity
    Integer socialContextSimilarity
    Integer sympathy
    Integer domainExpertise
    Integer socialHierarchy
    String relationship
    Date created
    Date modified

    @ManyToOne(fetch=FetchType.EAGER)
    @JoinColumn(name = "from_participant_id")
    Participant fromParticipant
    @ManyToOne(fetch=FetchType.EAGER)
    @JoinColumn(name = "to_participant_id")
    Participant toParticipant
}
