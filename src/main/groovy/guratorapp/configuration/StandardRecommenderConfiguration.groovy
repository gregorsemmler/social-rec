package guratorapp.configuration

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.recommendation.aggregation.AggregationStrategyType
import org.springframework.beans.factory.annotation.Value
import org.springframework.stereotype.Component

import javax.annotation.PostConstruct

/**
 * Stores configuration information about the Standard Recommender
 * to be accessed by other beans.
 */
@CompileStatic
@Slf4j
@Component(value = "StandardRecommenderConfiguration")
class StandardRecommenderConfiguration extends RecommenderConfiguration {

    @Value('${recommender.standard.aggregation.approvalVoting.approvalThreshold:50}')
    Double approvalVotingApprovalThreshold

    @Value('${recommender.standard.aggregation.averageWithoutMisery.miseryThreshold:33.33}')
    Double averageWithoutMiseryMiseryThreshold

    @Value('${recommender.standard.aggregation.strategy:AVERAGE}')
    private String aggregationStrategyTypeString

    @PostConstruct
    private void initialize() {
        try {
            aggregationStrategyType = AggregationStrategyType.fromString(aggregationStrategyTypeString)
        } catch(IllegalArgumentException e) {
            log.warn("Could not create aggregationStrategy with type ${aggregationStrategyTypeString}")
        }
    }

    @Override
    public String toString() {
        return "StandardRecommenderConfiguration{" +
                "aggregationStrategyType=" + aggregationStrategyType +
                ",approvalVotingApprovalThreshold=" + approvalVotingApprovalThreshold +
                ", averageWithoutMiseryMiseryThreshold=" + averageWithoutMiseryMiseryThreshold +
                '}';
    }
}
