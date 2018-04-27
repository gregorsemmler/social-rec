package guratorapp.repositories

import guratorapp.model.GroupType
import org.springframework.data.repository.CrudRepository
import org.springframework.stereotype.Repository

@Repository
interface GroupTypeRepository extends CrudRepository<GroupType,String>{

    GroupType findById(String id)
}