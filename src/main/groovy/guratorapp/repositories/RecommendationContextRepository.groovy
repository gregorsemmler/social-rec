package guratorapp.repositories

import guratorapp.model.RecommendationContext
import guratorapp.recommendation.aggregation.AggregationStrategyType
import guratorapp.recommendation.model.RestaurantRatingType
import guratorapp.services.grouprecommendation.RecommenderType
import org.springframework.data.repository.CrudRepository
import org.springframework.stereotype.Repository

@Repository
interface RecommendationContextRepository extends CrudRepository<RecommendationContext, Long>{
    RecommendationContext findById(Long id)
    Collection<RecommendationContext> findByRatingTypeAndAggregationStrategyTypeAndRecommenderType(RestaurantRatingType
           restaurantRatingType, AggregationStrategyType aggregationStrategyType, RecommenderType recommenderType)
}