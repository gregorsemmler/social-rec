package guratorapp.services.jobmanagement

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.model.JobInfo
import guratorapp.model.JobType
import guratorapp.repositories.JobInfoRepository
import guratorapp.repositories.JobTypeRepository
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service
import javax.servlet.http.HttpServletResponse
import javax.annotation.PostConstruct

/**
 * Starts and stops jobs and keeps track of them.
 */
@Slf4j
@CompileStatic
@Service
class JobManagementService implements JobListener{

    @Autowired
    JobInfoRepository jobInfoRepository

    @Autowired
    JobTypeRepository jobTypeRepository

    private int maxParallelJobs = 1
    private List<Job> runningJobs = new ArrayList<Job>()
    private Map<Long,Job> jobs = new LinkedHashMap<Long, Job>()
    private Map<String, JobType> instantiableJobTypes = new LinkedHashMap<String, JobType>()

    public JobManagementService() {

    }

    /**
     * Perform initializations for the service.
     */
    @PostConstruct
    private void initialize() {
        //save the available and instantiable jobTypes
        instantiableJobTypes[JobType.TESTJOBTYPE.id] = JobType.TESTJOBTYPE

        initializeDatabase()
    }

    /**
     * Stores information about the supplied Job in the database by saving its {@link JobInfo} object in the database.
     * @param job the Job object in question
     */
    void persistInDatabase(Job job) {
        jobInfoRepository.save(job.jobInfo)
    }

    /**
     * Saves default values into the database.
     */
    private void initializeDatabase() {
        log.info("Insert default JobTypes in database")
        jobTypeRepository.save(JobType.DEFAULTJOBTYPE)
        jobTypeRepository.save(JobType.TESTJOBTYPE)
    }

    /**
     * Returns true, if no more jobs are allowed to start
     * @return true, if no more jobs are allowed to start
     */
    public boolean isBlocked() {
        return runningJobs.size() >= maxParallelJobs
    }

    /**
     * Returns a list of the available billing JobTypes.
     * @return a List of the available billing JobTypes.
     */
    public List<JobType> getJobTypes() {
        return new ArrayList<JobType>(instantiableJobTypes.values())
    }

    /**
     * Returns a list of the jobs which are currently running.
     * @return a List of the currently running jobs.
     */
    public List<Job> getRunningJobs() {
        return new ArrayList<Job>(runningJobs)
    }

    /**
     * Returns the JobType corresponding to the supplied id
     * @param JobTypeId the JobTypeId
     * @return the JobType object
     *      or null, if no JobType with the supplied Id exists
     */
    public JobType getJobType(String JobTypeId) {
        return instantiableJobTypes[JobTypeId]
    }

    /**
     * Retrieves the job with the supplied id.
     * @param id the job-id as String
     * @return null, if no job with such id exists, else the corresponding job object
     */
    public Job getJob(Long id) {
        return jobs[id]
    }

    /**
     * Creates a new Job object of the supplied type and returns it. Additionally a corresponding
     * {@link guratorapp.model.JobInfo} is created and stored in the database
     * @param jobType
     * @return the Job object in question
     */
    private Job instantiateJob(JobType jobType) {
        Job j = null

        if(jobType == jobType.TESTJOBTYPE) {
            JobInfo jobInfo = new JobInfo([type : jobType, status : JobStatus.READY ])
            jobInfoRepository.save(jobInfo)
            jobInfo.name = "${jobType.name}${jobInfo.id}"
            jobInfoRepository.save(jobInfo)
            j = new TestJob([jobInfo : jobInfo, status: jobInfo.status])
        } else {
            //cannot create a job of this type
            throw new IllegalArgumentException("Cannot create a job object with type ${jobType.id}")
        }
        return j
    }

    /**
     * Starts a job based on the supplied Category.
     * @param jobType the category of the job
     * @param response the {@link javax.servlet.http.HttpServletResponse} response object
     */
    public synchronized void startJob(JobType jobType, HttpServletResponse response) {
        if(isBlocked()) {
            //another thread is already running, abort
            response.sendError(423,"A Job is currently in progress")
            return
        }

        Job j
        Long id

        //TODO test this
        if(instantiableJobTypes.values().contains(jobType)) {
            j = instantiateJob(jobType)
        } else {
            log.error("ERROR: could not find Job for JobType ${jobType.id}")
            response.sendError(500,"ERROR: could not find Job for jobType ${jobType.id}")
            return
        }

        //start job
        addJob(j)
        runningJobs.add(j)
        j.addListener(this)
        j.start()

        j.status = JobStatus.RUNNING

        response.setHeader("Location", "/jobs/${j.jobId}")
        response.setStatus(202)
    }

    /**
     * Adds a job to the JobManagementService
     * @param j the job
     */
    private void addJob(Job j) {
        if(j == null) {
            return
        }
        jobs[j.jobId] = j
    }

    /**
     * Called when a job finishes successfully.
     * @param job The job which finished.
     */
    @Override
    void jobCompleted(Job job) {
        job.status = JobStatus.FINISHED
        runningJobs.remove(job)
    }

    /**
     * Called when a job is aborted prematurely.
     * @param job The job which was aborted
     */
    @Override
    void jobAborted(Job job) {
        job.status = JobStatus.ABORTED
        runningJobs.remove(job)
    }

    /**
     * Called when a job has an unknown error.
     * @param job The job in which an error occurred.
     */
    @Override
    void jobError(Job job) {
        job.status = JobStatus.ERROR
        runningJobs.remove(job)
    }

    /**
     * Called when a job's JobInfo object is updated
     * @param job The job in which the JobInfo object is updated
     */
    @Override
    void jobInfoUpdated(Job job) {
        persistInDatabase(job)
    }
}
