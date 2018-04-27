package guratorapp.services

import com.fasterxml.jackson.databind.ObjectMapper
import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.configuration.DelegationBasedRecommenderConfiguration
import guratorapp.configuration.IndividualRecommenderConfiguration
import guratorapp.configuration.SocialContextRecommenderConfiguration
import guratorapp.configuration.StandardRecommenderConfiguration
import guratorapp.model.GroupType
import guratorapp.model.RecommendationContext
import guratorapp.recommendation.aggregation.AggregationStrategyType
import guratorapp.recommendation.model.RestaurantRatingType
import guratorapp.repositories.RecommendationContextRepository
import guratorapp.services.grouprecommendation.RecommenderType
import guratorapp.services.jobmanagement.JobManagementService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

import java.time.ZonedDateTime
/**
 * Delivers functionality to recommend items to users
 */
@CompileStatic
@Service
@Slf4j
class RecommendationContextService {

    @Autowired
    JobManagementService jobManagementService

    @Autowired
    DelegationBasedRecommenderConfiguration delegationBasedConfiguration
    @Autowired
    SocialContextRecommenderConfiguration socialContextRecommenderConfiguration
    @Autowired
    StandardRecommenderConfiguration standardRecommenderConfiguration
    @Autowired
    IndividualRecommenderConfiguration individualRecommenderConfiguration

    @Autowired
    RecommendationContextRepository recommendationContextRepository

    @Autowired
    ObjectMapper mapper

    /**
     * Creates a new {@link RecommendationContext} object, persists it in the database and returns it.
     * @param recommenderType The type of recommender used in the recommendation
     * @return The resulting {@link RecommendationContext}
     */
    RecommendationContext createNewRecommendationContext(RecommenderType recommenderType) {
        RecommendationContext context = new RecommendationContext()
        context.createdAt = ZonedDateTime.now()
        context.details = getConfigurationDetails(recommenderType)
        saveRecommendationContext(context)
        return context
    }

    /**
     * Creates a new {@link RecommendationContext} for the supplied parameters
     * @param recommenderType The type of Recommender
     * @param ratingType The type of rating which was used in the recommendation
     * @param strategyType The type of aggregation strategy which was used
     * @param groupType The type of groups for which a recommendation was generated
     * @return the resulting {@link RecommendationContext}
     */
    RecommendationContext createNewRecommendationContext(RecommenderType recommenderType,
        RestaurantRatingType ratingType, AggregationStrategyType strategyType, GroupType groupType) {
        RecommendationContext context = createNewRecommendationContext(recommenderType, ratingType, strategyType)
        context.groupType = groupType
        saveRecommendationContext(context)
        return context
    }

    /**
     * Creates a new {@link RecommendationContext} for the supplied parameters
     * @param recommenderType The type of Recommender
     * @param ratingType The type of rating which was used in the recommendation
     * @param strategyType The type of aggregation strategy which was used
     * @return the resulting {@link RecommendationContext}
     */
    RecommendationContext createNewRecommendationContext(RecommenderType recommenderType,
                     RestaurantRatingType ratingType, AggregationStrategyType strategyType) {
        RecommendationContext context = createNewRecommendationContext(recommenderType)
        context.ratingType = ratingType
        context.recommenderType = recommenderType
        context.aggregationStrategyType = strategyType
        saveRecommendationContext(context)
        return context
    }

    /**
     * Gets several details about the configuration of the recommendation process at the time of execution and formats them as a string
     * @return the resulting string
     */
    String getConfigurationDetails(RecommenderType recommenderType) {
        String result = individualRecommenderConfiguration.toString()
        if(recommenderType == RecommenderType.DELEGATION_BASED) {
            result = delegationBasedConfiguration.toString() + " " + result
        } else if(recommenderType == RecommenderType.STANDARD) {
            result = standardRecommenderConfiguration.toString() + " " + result
        } else if(recommenderType == RecommenderType.SOCIAL_CONTEXT) {
            result = socialContextRecommenderConfiguration.toString() + " " + result
        } else {
            throw new IllegalArgumentException("Unknown Recommendertype ${recommenderType}")
        }

        return result
    }

    /**
     * Stores a supplied {@link RecommendationContext} in the database.
     * @param recommendationContext The object to be saved.
     */
    void saveRecommendationContext(RecommendationContext recommendationContext) {
        recommendationContextRepository.save(recommendationContext)
    }

    /**
     * Returns all {@link RecommendationContext} for a supplied list of arguments
     * @param restaurantRatingType the type of restaurant rating
     * @param aggregationStrategyType the type of aggregation strategy
     * @param recommenderType the type of recommender which was used
     * @return all {@link RecommendationContext} with the supplied parameters
     */
    Collection<RecommendationContext> getRecommendationContexts(RestaurantRatingType restaurantRatingType,
        AggregationStrategyType aggregationStrategyType, RecommenderType recommenderType) {

        return recommendationContextRepository.findByRatingTypeAndAggregationStrategyTypeAndRecommenderType(
                restaurantRatingType, aggregationStrategyType, recommenderType)
    }
}
