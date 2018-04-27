package guratorapp.recommendation.evaluation

import guratorapp.recommendation.model.GroupRestaurantRating

/**
 * Calculates a score based on a collection of baseline ratings and a collection of ratings which are evaluated.
 */
interface EvaluationMetric {

    /**
     * Calculates a score for a given amount of ratings
     * @param baselineRatings
     * @param ratingsToEvaluate
     * @return the resulting score
     */
    double evaluate(Collection<GroupRestaurantRating> baselineRatings, Collection<GroupRestaurantRating> ratingsToEvaluate)

    /**
     * Returns the type of this metric
     * @return the {@link EvaluationMetricType}
     */
    EvaluationMetricType getType()

    /**
     * Returns specific parameters of the metric, formatted as a string.
     * @return the resulting configuration string
     */
    String getConfigurationDetails()
}