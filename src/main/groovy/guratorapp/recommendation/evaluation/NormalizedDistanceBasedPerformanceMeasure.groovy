package guratorapp.recommendation.evaluation

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.recommendation.model.GroupRestaurantRating
import guratorapp.recommendation.model.Restaurant
import guratorapp.services.grouprecommendation.StandardGroupRecommenderService

@CompileStatic
@Slf4j
//TODO calculates wrong values
class NormalizedDistanceBasedPerformanceMeasure implements EvaluationMetric {

    private Map<Restaurant, GroupRestaurantRating> baseline
    private Map<Restaurant, GroupRestaurantRating> evaluate
    private int cplus
    private int cminus
    private int cu
    private int cs
    private int cu0

    private int calculateCValues() {
        cplus = cminus = cu = cs = cu0 = 0

        Restaurant[] restaurants = baseline.keySet().toArray() as Restaurant[]

        double signbaseij
        double signevalij

        for(int i=0; i<restaurants.length; ++i) {
            Restaurant first = restaurants[i]

            for(int j=i+1; j<restaurants.length; ++j) {
                Restaurant second = restaurants[j]

                signbaseij = Math.signum(baseline[first].score - baseline[second].score)
                signevalij = Math.signum(evaluate[first].score - evaluate[second].score)

                cplus += (signbaseij * signevalij) as Integer
                cminus += (signbaseij * (-1.0 * signevalij)) as Integer
                cu += signbaseij*signbaseij as Integer
                cs += signevalij*signevalij as Integer
            }
        }

        cu0 = cu - (cplus + cminus)
    }

    private void checkAllPairsPresent() {
        for(Restaurant r : baseline.keySet()) {
            if(!evaluate.containsKey(r)) {
                throw new RuntimeException("Restaurant ${r} not found in evaluation set")
            }
        }
    }

    private void calculateRatingMaps(Collection<GroupRestaurantRating> baselineRatings, Collection<GroupRestaurantRating> ratingsToEvaluate) {
        baseline = StandardGroupRecommenderService.nonDuplicateCollectionToMap(baselineRatings)
        evaluate = StandardGroupRecommenderService.nonDuplicateCollectionToMap(ratingsToEvaluate)
    }

    @Override
    double evaluate(Collection<GroupRestaurantRating> baselineRatings, Collection<GroupRestaurantRating> ratingsToEvaluate) {
        if(baselineRatings == null || ratingsToEvaluate == null || baselineRatings.isEmpty() || ratingsToEvaluate.isEmpty()) {
            throw new IllegalArgumentException("Illegal Parameters")
        }

        calculateRatingMaps(baselineRatings, ratingsToEvaluate)
        checkAllPairsPresent()
        calculateCValues()

        //TODO value is wrong!
        return ((cminus as double) + 0.5*(cu0 as double))/(cu as double)
    }

    @Override
    EvaluationMetricType getType() {
        return EvaluationMetricType.NDBPM
    }

    @Override
    String getConfigurationDetails() {
        return ""
    }
}
