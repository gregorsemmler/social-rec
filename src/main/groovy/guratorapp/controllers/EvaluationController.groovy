package guratorapp.controllers

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.model.GroupType
import guratorapp.recommendation.aggregation.AggregationStrategyType
import guratorapp.recommendation.evaluation.EvaluationMetricType
import guratorapp.recommendation.model.RestaurantRatingType
import guratorapp.services.EvaluationService
import guratorapp.services.grouprecommendation.RecommenderType
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.bind.annotation.RestController

@CompileStatic
@Slf4j
@RestController
class EvaluationController {
    @Autowired
    EvaluationService evaluationService

    @RequestMapping(value = "/evaluate-predicted-ratings")
    void evaluatePredictedRatings(@RequestParam(value = "aggregation-type") String aggregationType,
                                  @RequestParam(value = "rating-type") String ratingType,
                                  @RequestParam(value = "evaluation-metric-type") String evaluationType,
                                  @RequestParam(value = "recommender-type", defaultValue = "STANDARD", required = false)
                                String recommenderTypeString,
                                  @RequestParam(value = "group-type")
                                String groupTypeString) {
        AggregationStrategyType strategyType = AggregationStrategyType.fromString(aggregationType)
        RestaurantRatingType restaurantRatingType = RestaurantRatingType.fromString(ratingType)
        EvaluationMetricType evaluationMetricType = EvaluationMetricType.fromString(evaluationType)
        RecommenderType recommenderType = RecommenderType.fromString(recommenderTypeString)

        GroupType groupType = GroupType.fromString(groupTypeString)

        evaluationService.evaluateRecommendationContexts(recommenderType, restaurantRatingType, strategyType,
                evaluationMetricType, groupType)
    }

    @RequestMapping(value = "/evaluate-with-all-metrics-and-aggregations")
    void evaluateWithAllMetricsAndAggregationStrategies(@RequestParam(value = "rating-type", required = false) String ratingTypeString,
                        @RequestParam(value = "recommender-type")
                                String recommenderTypeString,
                        @RequestParam(value = "group-type", required = false)
                                String groupTypeString) {
        RecommenderType recommenderType = RecommenderType.fromString(recommenderTypeString)
        RestaurantRatingType restaurantRatingType = null
        if(ratingTypeString != null)
            restaurantRatingType = RestaurantRatingType.fromString(ratingTypeString)

        GroupType groupType = null
        if(groupTypeString != null)
            groupType = GroupType.fromString(groupTypeString)

        //Loop over all groups if no groupType was supplied
        if(groupType == null) {
            for(GroupType gt : GroupType.allTypes()) {
                log.info("GroupType ${gt}")
                if(restaurantRatingType == null) {
                    evaluationService.evaluateRecommendationContexts(recommenderType, gt)
                } else {
                    evaluationService.evaluateRecommendationContexts(recommenderType, restaurantRatingType, gt)
                }
            }
            return
        }

        if(restaurantRatingType == null) {
            evaluationService.evaluateRecommendationContexts(recommenderType, groupType)
        } else {
            evaluationService.evaluateRecommendationContexts(recommenderType, restaurantRatingType, groupType)
        }
    }
}
