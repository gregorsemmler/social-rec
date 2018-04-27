package guratorapp.model

import com.fasterxml.jackson.annotation.JsonProperty
import groovy.transform.CompileStatic
import groovy.transform.ToString
import guratorapp.services.jobmanagement.JobStatus

import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.EnumType
import javax.persistence.Enumerated
import javax.persistence.FetchType
import javax.persistence.GeneratedValue
import javax.persistence.Id
import javax.persistence.JoinColumn
import javax.persistence.ManyToOne
import guratorapp.services.jobmanagement.Job

/**
 * Used to persist information about a {@link Job} in the database.
 */
@CompileStatic
@Entity
@ToString(includeNames = true)
class JobInfo {
    @JsonProperty
    @Id
    @GeneratedValue
    @Column(name = "id")
    Long id

    String name

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "type")
    JobType type

    @Enumerated(EnumType.STRING)
    JobStatus status

    @Override
    public int hashCode() {
        return (id != null) ? id.hashCode() : 0
    }
}
