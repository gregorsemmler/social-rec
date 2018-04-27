package guratorapp.repositories

import groovy.transform.CompileStatic
import guratorapp.model.GuratorGroup
import guratorapp.model.GroupRestaurantSurvey
import org.springframework.data.repository.CrudRepository
import org.springframework.stereotype.Repository

@CompileStatic
@Repository
interface GroupRestaurantSurveyRepository extends CrudRepository<GroupRestaurantSurvey,Integer> {
    List<GroupRestaurantSurvey> findAll()
    List<GroupRestaurantSurvey> findByGroup(GuratorGroup group)
}