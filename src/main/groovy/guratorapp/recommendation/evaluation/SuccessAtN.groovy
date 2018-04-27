package guratorapp.recommendation.evaluation

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.recommendation.model.GroupRestaurantRating
import guratorapp.recommendation.model.Restaurant

/**
 * Returns 1 if there is at least one hit in the first N positions
 */
@CompileStatic
@Slf4j
class SuccessAtN implements SuccessEvaluationMetric {

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

        for(int i=0; i < baselineLimit; ++i) {
            successMap[baselineList[i].restaurant] = true
        }
        for(int j=0; j < evaluateLimit; ++j) {
            if(successMap.containsKey(evaluateList[j].restaurant)) {
                return 1.0
            }
        }
        return 0
    }

    @Override
    EvaluationMetricType getType() {
        return EvaluationMetricType.SUCCESS_AT_N
    }

    @Override
    boolean isSuccess(Collection<GroupRestaurantRating> baselineRatings, Collection<GroupRestaurantRating> ratingsToEvaluate) {
        return evaluate(baselineRatings, ratingsToEvaluate) > 0
    }

    @Override
    String getConfigurationDetails() {
        return "N=${N}"
    }
}
