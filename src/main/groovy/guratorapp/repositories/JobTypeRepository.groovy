package guratorapp.repositories

import guratorapp.model.JobType
import org.springframework.data.jpa.repository.JpaRepository

interface JobTypeRepository extends JpaRepository<JobType,String> {
    JobType findById(String id)
}