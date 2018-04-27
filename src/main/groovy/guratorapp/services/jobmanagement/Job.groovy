package guratorapp.services.jobmanagement

import groovy.transform.CompileStatic
import guratorapp.model.JobInfo
import guratorapp.model.JobType

/**
 * An abstract job. A job can be used to asynchronously to perform (long-running) tasks.
 */
@CompileStatic
abstract class Job implements Runnable {

    protected List<JobListener> listeners = Collections.synchronizedList(new ArrayList<JobListener>(1))

    protected Thread t

    abstract void execute()

    public void run() {
        execute()
        if(status == JobStatus.RUNNING) {
            //job finished regularly
            notifyJobCompleted()
        } else if(status == JobStatus.ABORTED) {
            //job was aborted
            notifyJobAborted()
        } else {
            //unknown error occurred.
            notifyJobError()
        }
    }

    /**
     * Starts this job.
     */
    public void start () {
        t = new Thread (this, jobId.toString())
        t.start()
    }

    Long getJobId() {
        return jobInfo.id
    }

    JobType getJobType() {
        return jobInfo.type
    }

    String getName() {
        return jobInfo.name
    }

    JobInfo jobInfo

    /**
     * Returns the {@link JobStatus} of this instance
     * @return the {@link JobStatus} of this instance
     */
    JobStatus getStatus() {
        return jobInfo.status
    }

    /**
     * Sets the {@link JobStatus} of this instance
     * @param jobStatus
     */
    void setStatus(JobStatus jobStatus) {
        jobInfo.status = jobStatus
        notifyJobInfoUpdate()
    }

    /**
     * Adds a listener to the Job.
     * @param listener the listener to be added.
     */
    public void addListener(JobListener listener) {
        listeners.add(listener)
    }

    /**
     * Removes a listener from this Job.
     * @param listener the listener to be removed.
     */
    public void removeListener(JobListener listener) {
        listeners.remove(listener)
    }

    /**
     * Notifies all listeners of this Job that the job is complete.
     */
    protected final void notifyJobCompleted() {
        synchronized (listeners) {
            for(JobListener listener : listeners) {
                listener.jobCompleted(this)
            }
        }
    }

    /**
     * Notifies all listeners of this Job that the job was aborted.
     */
    protected final void notifyJobAborted() {
        synchronized (listeners) {
            for(JobListener listener : listeners) {
                listener.jobAborted(this)
            }
        }
    }

    /**
     * Notifies all listeners of this Job that the job experienced an Error.
     */
    protected final void notifyJobError() {
        synchronized (listeners) {
            for(JobListener listener : listeners) {
                listener.jobError(this)
            }
        }
    }

    /**
     * Notifies all listeners of this Job that the job's information was updated
     */
    protected final void notifyJobInfoUpdate() {
        synchronized (listeners) {
            for(JobListener listener : listeners) {
                listener.jobInfoUpdated(this)
            }
        }
    }
}
