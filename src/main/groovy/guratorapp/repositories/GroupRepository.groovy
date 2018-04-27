package guratorapp.repositories

import guratorapp.model.GroupType
import guratorapp.model.GuratorGroup
import org.springframework.data.repository.CrudRepository

interface GroupRepository extends CrudRepository<GuratorGroup,Long> {

    List<GuratorGroup> findAll()

    List<GuratorGroup> findByGroupType(GroupType groupType)

    GuratorGroup findById(Integer id)
}