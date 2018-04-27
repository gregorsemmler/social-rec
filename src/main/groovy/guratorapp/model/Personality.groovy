package guratorapp.model

import groovy.transform.CompileStatic

import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.GenerationType
import javax.persistence.Id
import javax.persistence.OneToOne
import javax.persistence.Table

/**
 * A personality of a {@link Participant} based on the Thomas/Kilman Conflict Mode Instrument test.
 *
 * {@see PersonalityAnalysisService}
 */
@CompileStatic
@Entity
@Table(name = "personality")
class Personality {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    Integer id

    Integer competing
    Integer cooperating
    Integer compromising
    Integer avoiding
    Integer accommodating

    @OneToOne
    Participant participant
}
