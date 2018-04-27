package guratorapp.configuration

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.services.grouprecommendation.SocialContextGroupRecommenderService
import guratorapp.recommendation.aggregation.AggregationStrategyType
import org.springframework.beans.factory.annotation.Value
import org.springframework.stereotype.Component

import javax.annotation.PostConstruct

/**
 * Stores configuration information about the {@link SocialContextGroupRecommenderService}.
 */
@CompileStatic
@Slf4j
@Component(value = "SocialContextRecommenderConfiguration")
class SocialContextRecommenderConfiguration extends RecommenderConfiguration {

    @Value('${recommender.sc.aggregation.approvalVoting.approvalThreshold:50}')
    Double approvalVotingApprovalThreshold
    @Value('${recommender.sc.aggregation.averageWithoutMisery.miseryThreshold:33.33}')
    Double averageWithoutMiseryMiseryThreshold

    //Domain Expertise is aka Trust in our scenario
    @Value('${recommender.sc.parameterActive.domainExpertise:true}')
    Boolean domainExpertiseIsActive
    @Value('${recommender.sc.parameterActive.socialCapital:true}')
    Boolean socialCapitalIsActive
    @Value('${recommender.sc.parameterActive.tieStrength:true}')
    Boolean tieStrengthIsActive
    @Value('${recommender.sc.parameterActive.socialSimilarity:true}')
    Boolean socialSimilarityIsActive
    @Value('${recommender.sc.parameterActive.socialContextSimilarity:true}')
    Boolean socialContextSimilarityIsActive
    @Value('${recommender.sc.parameterActive.sympathy:true}')
    Boolean sympathyIsActive
    @Value('${recommender.sc.parameterActive.socialHierarchy:true}')
    Boolean socialHierarchyIsActive

    @Value('${recommender.sc.useSocialContextGroupAverageAsDefault:false}')
    Boolean useSocialContextGroupAverageAsDefault
    @Value('${recommender.sc.defaultValue.conflictModeWeight:0.0}')
    Double defaultConflictModeWeight
    @Value('${recommender.sc.defaultValue.domainExpertise:23.7565}')
    Double defaultDomainExpertise
    @Value('${recommender.sc.defaultValue.socialCapital:23.3946}')
    Double defaultSocialCapital
    @Value('${recommender.sc.defaultValue.tieStrength:18.2376}')
    Double defaultTieStrength
    @Value('${recommender.sc.defaultValue.socialSimilarity:27.2405}')
    Double defaultSocialSimilarity
    @Value('${recommender.sc.defaultValue.socialContextSimilarity:24.8389}')
    Double defaultSocialContextSimilarity
    @Value('${recommender.sc.defaultValue.sympathy:26.9974}')
    Double defaultSympathy
    @Value('${recommender.sc.defaultValue.socialHierarchy:32.2798}')
    Double defaultSocialHierarchy

    @Value('${recommender.sc.aggregation.strategy:AVERAGE}')
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
        if(!isValidRatingScore(approvalVotingApprovalThreshold)) {
            throw new RuntimeException("Configuration parameter is out of valid range")
        }

        if(!isValidRatingScore(averageWithoutMiseryMiseryThreshold)) {
            throw new RuntimeException("Configuration parameter is out of valid range")
        }

        if(!isValidSocialContextScore(defaultDomainExpertise)) {
            throw new RuntimeException("Configuration parameter is out of valid range")
        }

        if(!isValidSocialContextScore(defaultSocialHierarchy)) {
            throw new RuntimeException("Configuration parameter is out of valid range")
        }

        if(!isValidSocialContextScore(defaultSympathy)) {
            throw new RuntimeException("Configuration parameter is out of valid range")
        }

        if(!isValidSocialContextScore(defaultSocialContextSimilarity)) {
            throw new RuntimeException("Configuration parameter is out of valid range")
        }

        if(!isValidSocialContextScore(defaultSocialSimilarity)) {
            throw new RuntimeException("Configuration parameter is out of valid range")
        }

        if(!isValidSocialContextScore(defaultTieStrength)) {
            throw new RuntimeException("Configuration parameter is out of valid range")
        }

        if(!isValidSocialContextScore(defaultSocialCapital)) {
            throw new RuntimeException("Configuration parameter is out of valid range")
        }
    }

    @Override
    String toString() {
        return "SocialContextRecommenderConfiguration{" +
                "approvalVotingApprovalThreshold=" + approvalVotingApprovalThreshold +
                ", averageWithoutMiseryMiseryThreshold=" + averageWithoutMiseryMiseryThreshold +
                ", domainExpertiseIsActive=" + domainExpertiseIsActive +
                ", socialCapitalIsActive=" + socialCapitalIsActive +
                ", tieStrengthIsActive=" + tieStrengthIsActive +
                ", socialSimilarityIsActive=" + socialSimilarityIsActive +
                ", socialContextSimilarityIsActive=" + socialContextSimilarityIsActive +
                ", sympathyIsActive=" + sympathyIsActive +
                ", socialHierarchyIsActive=" + socialHierarchyIsActive +
                ", useSocialContextGroupAverageAsDefault=" + useSocialContextGroupAverageAsDefault +
                ", defaultConflictModeWeight=" + defaultConflictModeWeight +
                ", defaultDomainExpertise=" + defaultDomainExpertise +
                ", defaultSocialCapital=" + defaultSocialCapital +
                ", defaultTieStrength=" + defaultTieStrength +
                ", defaultSocialSimilarity=" + defaultSocialSimilarity +
                ", defaultSocialContextSimilarity=" + defaultSocialContextSimilarity +
                ", defaultSympathy=" + defaultSympathy +
                ", defaultSocialHierarchy=" + defaultSocialHierarchy +
                '}'
    }
}
