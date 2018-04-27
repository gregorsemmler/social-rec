package guratorapp.services.jobmanagement

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j

/**
 * Job for testing purposes
 */
@CompileStatic
@Slf4j
class TestJob extends Job {

    @Override
    void execute() {
        log.info("Running ${jobType.name} with id ${jobId}")
        try {
            int seconds = 5;
            for(int i=seconds; i >= 0; --i) {
                log.info("${name} Countdown: ${i}")
                Thread.sleep(1000)
            }
        } catch (InterruptedException e) {
            log.warn("${name} interrupted!")
            status = JobStatus.ABORTED
        } catch (Exception e) {
            log.error("${name} Error occured: ", e)
            status = JobStatus.ERROR
        }
        log.info("${name} exiting.")
    }
}
