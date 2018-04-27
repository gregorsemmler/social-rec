package guratorapp.repositories

import guratorapp.model.RestaurantId
import org.springframework.data.repository.CrudRepository
import org.springframework.stereotype.Repository

@Repository
interface RestaurantIdRepository extends CrudRepository<RestaurantId, Long> {
    List<RestaurantId> findAll()

    RestaurantId findByYelpId(String yelpId)

    RestaurantId findById(Long id)
}