package guratorapp.recommendation.evaluation

import guratorapp.recommendation.model.GroupRestaurantRating

interface SuccessEvaluationMetric extends EvaluationMetric {

    /**
     * Returns true if the evaluation indicated a success
     * @return
     */
    boolean isSuccess(Collection<GroupRestaurantRating> baselineRatings, Collection<GroupRestaurantRating> ratingsToEvaluate)
}
