package guratorapp.model

import groovy.transform.CompileStatic

import javax.persistence.Entity
import javax.persistence.FetchType
import javax.persistence.Id
import javax.persistence.JoinColumn
import javax.persistence.ManyToOne
import javax.persistence.OneToOne
import javax.persistence.Table

/**
 * An Answer of a {@link Participant} in the Thomas/Kilman Conflict Mode Instrument test.
 */
@CompileStatic
@Entity
@Table(name = "participantpersonalityquestion")
class ParticipantPersonalityQuestion {
    @Id
    Integer id
    String answer
    Date created
    Date modified

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "participant_id")
    Participant participant

    @OneToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "personality_question_id")
    PersonalityQuestion personalityQuestion
}
