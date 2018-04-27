package guratorapp.repositories

import guratorapp.model.JobInfo
import org.springframework.data.jpa.repository.JpaRepository

interface JobInfoRepository extends JpaRepository<JobInfo,Long> {
    JobInfo findById(Long id)
}