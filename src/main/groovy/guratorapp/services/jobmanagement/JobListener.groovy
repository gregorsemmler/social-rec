package guratorapp.services.jobmanagement

/**
 * Used by a Job to notify an object about status changes
 */
interface JobListener {

    /**
     * Called when a job finishes successfully.
     * @param job The job which finished.
     */
    public void jobCompleted(Job job)

    /**
     * Called when a job is aborted prematurely.
     * @param job The job which was aborted
     */
    public void jobAborted(Job job)

    /**
     * Called when a job has an unknown error.
     * @param job The job in which an error occurred.
     */
    public void jobError(Job job)

    /**
     * Called when a job's JobInfo object is updated
     * @param job The job in which the JobInfo object is updated
     */
    public void jobInfoUpdated(Job job)
}