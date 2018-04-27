package guratorapp.services.jobmanagement

import com.fasterxml.jackson.annotation.JsonFormat
import com.fasterxml.jackson.annotation.JsonValue

/**
 * Describes the status of a Job.
 */
@JsonFormat(shape = JsonFormat.Shape.OBJECT)
enum JobStatus {
    RUNNING(1, "running") , FINISHED(2, "finished"), ERROR(3, "error"), ABORTED(4, "aborted"), READY(5, "ready")

    private Integer id
    private String name

    private JobStatus(final Integer id, final String name) {
        this.id = id
        this.name = name
    }

    public Integer getId() {
        return id
    }

    @JsonValue
    public String getName() {
        return name
    }
}