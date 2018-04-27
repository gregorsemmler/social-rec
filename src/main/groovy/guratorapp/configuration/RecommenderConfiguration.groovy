package guratorapp.configuration

import groovy.transform.CompileStatic
import guratorapp.recommendation.aggregation.AggregationStrategyType

/**
 * Contains configuration information about a recommender.
 */
@CompileStatic
abstract class RecommenderConfiguration {

    public final static double MINIMUM_RATING_SCORE = 0.0
    public final static double MAXIMUM_RATING_SCORE = 100.0
    public final static double MINIMUM_SOCIAL_CONTEXT_SCORE = 0.0
    public final static double MAXIMUM_SOCIAL_CONTEXT_SCORE = 100.0

    AggregationStrategyType aggregationStrategyType

    Double approvalVotingApprovalThreshold

    Double averageWithoutMiseryMiseryThreshold

    /**
     * Returns true, if the supplied value is within the boundaries of the valid rating range
     * @param value the value to be examined
     * @return true, if the value is valid
     */
    boolean isValidRatingScore(double value) {
        return (value >= MINIMUM_RATING_SCORE) && (value <= MAXIMUM_RATING_SCORE)
    }

    /**
     * Returns true, if the supplied value is within the boundaries of the valid social context range
     * @param value the value to be examined
     * @return true, if the value is valid
     */
    boolean isValidSocialContextScore(double value) {
        return (value >= MINIMUM_SOCIAL_CONTEXT_SCORE) && (value <= MAXIMUM_SOCIAL_CONTEXT_SCORE)
    }


    @Override
    String toString() {
        return "RecommenderConfiguration{" +
                "aggregationStrategyType=" + aggregationStrategyType +
                ", approvalVotingApprovalThreshold=" + approvalVotingApprovalThreshold +
                ", averageWithoutMiseryMiseryThreshold=" + averageWithoutMiseryMiseryThreshold +
                '}';
    }
}
