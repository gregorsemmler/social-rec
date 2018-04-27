package guratorapp.configuration

import groovy.util.logging.Slf4j
import guratorapp.recommendation.aggregation.AggregationStrategyType
import guratorapp.services.grouprecommendation.DelegationBasedGroupRecommenderService
import groovy.transform.CompileStatic
import org.springframework.beans.factory.annotation.Value
import org.springframework.stereotype.Component

import javax.annotation.PostConstruct

/**
 * Stores configuration information about the {@link DelegationBasedGroupRecommenderService} to be accessed by other beans
 */
@CompileStatic
@Slf4j
@Component(value = "DelegationBasedRecommenderConfiguration")
class DelegationBasedRecommenderConfiguration extends RecommenderConfiguration {

    @Value('${recommender.db.aggregation.approvalVoting.approvalThreshold:50}')
    Double approvalVotingApprovalThreshold

    @Value('${recommender.db.aggregation.averageWithoutMisery.miseryThreshold:33.33}')
    Double averageWithoutMiseryMiseryThreshold

    @Value('${recommender.db.defaultTrust:23.7565}')
    Double defaultTrust

    @Value('${recommender.db.defaultConflictModeWeight:0.0}')
    Double defaultConflictModeWeight

    @Value('${recommender.db.aggregation.strategy:AVERAGE}')
    private String aggregationStrategyTypeString

    @PostConstruct
    private void initialize() {
        try {
            aggregationStrategyType = AggregationStrategyType.fromString(aggregationStrategyTypeString)
        } catch(IllegalArgumentException e) {
            log.warn("Could not create aggregationStrategy with type ${aggregationStrategyTypeString}")
        }
        checkDefaultValues()
    }


    /**
     * Checks if all default values for different parameters are in the correct range. If not, a {@link RuntimeException}
     * is thrown
     */
    void checkDefaultValues() {
        if (!isValidRatingScore(approvalVotingApprovalThreshold)) {
            throw new RuntimeException("Configuration parameter is out of valid range")
        }

        if (!isValidRatingScore(averageWithoutMiseryMiseryThreshold)) {
            throw new RuntimeException("Configuration parameter is out of valid range")
        }

        if(!isValidSocialContextScore(defaultTrust)) {
            throw new RuntimeException("Configuration parameter is out of valid range")
        }
    }

    @Override
    public String toString() {
        return "DelegationBasedRecommenderConfiguration{" +
                "aggregationStrategyType=" + aggregationStrategyType +
                ", approvalVotingApprovalThreshold=" + approvalVotingApprovalThreshold +
                ", averageWithoutMiseryMiseryThreshold=" + averageWithoutMiseryMiseryThreshold +
                ", defaultTrust=" + defaultTrust +
                ", defaultConflictModeWeight=" + defaultConflictModeWeight +
                '}';
    }
}
