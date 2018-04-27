package guratorapp.repositories.ratings

import groovy.transform.CompileStatic
import guratorapp.model.GuratorGroup
import guratorapp.model.RecommendationContext
import guratorapp.model.ratings.GroupPredictedRating
import org.springframework.data.repository.CrudRepository

@CompileStatic
interface GroupPredictedRatingRepository extends CrudRepository<GroupPredictedRating, Long> {
    Collection<GroupPredictedRating> findByGroup(GuratorGroup group)
    Collection<GroupPredictedRating> findByRecommendationContext(RecommendationContext recommendationContext)
    Collection<GroupPredictedRating> findByGroupAndRecommendationContext(GuratorGroup group, RecommendationContext recommendationContext)
}