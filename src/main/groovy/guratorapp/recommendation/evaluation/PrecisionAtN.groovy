package guratorapp.recommendation.evaluation

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.recommendation.model.GroupRestaurantRating
import guratorapp.recommendation.model.Restaurant

/**
 * Returns the percentage of hits in the first n positions
 */
@CompileStatic
@Slf4j
class PrecisionAtN implements EvaluationMetric{

    int N = 3

    @Override
    double evaluate(Collection<GroupRestaurantRating> baselineRatings, Collection<GroupRestaurantRating> ratingsToEvaluate) {
        if(baselineRatings == null || ratingsToEvaluate == null || baselineRatings.isEmpty() || ratingsToEvaluate.isEmpty()) {
            throw new IllegalArgumentException("Illegal Parameters")
        }

        if(baselineRatings.size() < N || ratingsToEvaluate.size() < N) {
            log.warn("The number of ratings is smaller than the set value of N!")
        }

        List<GroupRestaurantRating> baselineList = baselineRatings as List
        List<GroupRestaurantRating> evaluateList = ratingsToEvaluate as List
        HashMap<Restaurant, Boolean> successMap = new HashMap<>()

        int baselineLimit = Math.min(N, baselineList.size())
        int evaluateLimit = Math.min(N, evaluateList.size())

        Collections.sort(baselineList, Collections.reverseOrder())
        Collections.sort(evaluateList, Collections.reverseOrder())

        double result = 0.0

        for(int i=0; i < baselineLimit; ++i) {
            successMap[baselineList[i].restaurant] = true
        }
        for(int j=0; j < evaluateLimit; ++j) {
            if(successMap.containsKey(evaluateList[j].restaurant)) {
               result += 1.0
            }
        }
        return result/(evaluateLimit as double)
    }

    @Override
    EvaluationMetricType getType() {
        return EvaluationMetricType.PRECISION_AT_N
    }

    @Override
    String getConfigurationDetails() {
        return "N=${N}"
    }
}
