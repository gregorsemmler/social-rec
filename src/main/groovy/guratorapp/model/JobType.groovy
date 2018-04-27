package guratorapp.model

import com.fasterxml.jackson.annotation.JsonProperty
import groovy.transform.CompileStatic

import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.Id
import guratorapp.services.jobmanagement.Job

/**
 * Describes the Type of a {@link Job}
 */
@CompileStatic
@Entity
class JobType {

    public static final JobType DEFAULTJOBTYPE = new JobType([id: "DEFAU", name: "DefaultJob", description: "defaultType"])
    public static final JobType TESTJOBTYPE =
            new JobType([id: "TEST", name : "TestJob", description: "A Test Job Type"])

    @Id
    @JsonProperty
    @Column(name = "id", length = 5)
    String id

    String name

    String description
}
