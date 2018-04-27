package guratorapp.recommendation.evaluation

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.recommendation.model.GroupRestaurantRating
import guratorapp.recommendation.model.Restaurant

/**
 * Returns 1 if there are at least M hits in the first N positions
 */
@CompileStatic
@Slf4j
class MSuccessAtN implements SuccessEvaluationMetric {
    int M = 2
    int N = 3

    @Override
    double evaluate(Collection<GroupRestaurantRating> baselineRatings, Collection<GroupRestaurantRating> ratingsToEvaluate) {
        if(M > N) {
            throw new RuntimeException("Parameter M has to be smaller or equal to N")
        }

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
        return result >= (M as double) ? 1.0 : 0.0
    }

    @Override
    EvaluationMetricType getType() {
        return EvaluationMetricType.M_SUCCESS_AT_N
    }

    @Override
    boolean isSuccess(Collection<GroupRestaurantRating> baselineRatings, Collection<GroupRestaurantRating> ratingsToEvaluate) {
        return evaluate(baselineRatings, ratingsToEvaluate) > 0
    }

    @Override
    String getConfigurationDetails() {
        return "M=${M}, N=${N}"
    }
}
