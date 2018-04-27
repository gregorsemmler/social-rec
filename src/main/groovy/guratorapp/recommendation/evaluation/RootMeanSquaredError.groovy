package guratorapp.recommendation.evaluation

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.recommendation.model.GroupRestaurantRating
import guratorapp.recommendation.model.Restaurant
import guratorapp.services.grouprecommendation.StandardGroupRecommenderService

@CompileStatic
@Slf4j
class RootMeanSquaredError implements EvaluationMetric {

    @Override
    double evaluate(Collection<GroupRestaurantRating> baselineRatings, Collection<GroupRestaurantRating> ratingsToEvaluate) {
        if(baselineRatings == null || ratingsToEvaluate == null || baselineRatings.isEmpty() || ratingsToEvaluate.isEmpty()) {
            throw new IllegalArgumentException("Illegal Parameters")
        }
        if(baselineRatings.size() != ratingsToEvaluate.size()) {
            throw new IllegalArgumentException("Size of baseline Ratings does not equal size of ratings to evaluate")
        }

        Map<Restaurant, GroupRestaurantRating> baseline = StandardGroupRecommenderService.nonDuplicateCollectionToMap(baselineRatings)
        Map<Restaurant, GroupRestaurantRating> evaluate = StandardGroupRecommenderService.nonDuplicateCollectionToMap(ratingsToEvaluate)

        double result = 0.0
        int n = 0
        double delta

        for(Restaurant r : baseline.keySet()) {
            if(!evaluate.containsKey(r)) {
                throw new IllegalArgumentException("Restaurant ${r.id} not found in Evaluation collection!")
            }

            delta = (baseline[r].score - evaluate[r].score)
            result += delta*delta
            ++n
        }

        result /= n as double

        return Math.sqrt(result)
    }

    @Override
    EvaluationMetricType getType() {
        return EvaluationMetricType.ROOT_MEAN_SQUARED_ERROR
    }

    @Override
    String getConfigurationDetails() {
        return ""
    }
}
