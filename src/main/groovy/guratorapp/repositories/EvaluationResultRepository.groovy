package guratorapp.repositories

import groovy.transform.CompileStatic
import guratorapp.model.EvaluationResult
import guratorapp.model.RecommendationContext
import org.springframework.data.repository.CrudRepository
import org.springframework.stereotype.Repository

@CompileStatic
@Repository
interface EvaluationResultRepository extends CrudRepository<EvaluationResult, Long>{
    EvaluationResult findById(Long id)
    List<EvaluationResult> findByRecommendationContext(RecommendationContext context)
}