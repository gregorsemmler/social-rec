package guratorapp.services

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.configuration.EvaluationConfiguration
import guratorapp.model.EvaluationResult
import guratorapp.model.GroupType
import guratorapp.model.GuratorGroup
import guratorapp.model.RecommendationContext
import guratorapp.model.ratings.GroupPredictedRating
import guratorapp.recommendation.aggregation.AggregationStrategyType
import guratorapp.recommendation.evaluation.*
import guratorapp.recommendation.model.GroupRestaurantRating
import guratorapp.recommendation.model.RecommendationGroup
import guratorapp.recommendation.model.RestaurantRatingType
import guratorapp.repositories.EvaluationResultRepository
import guratorapp.repositories.ratings.GroupPredictedRatingRepository
import guratorapp.services.grouprecommendation.RecommenderType
import guratorapp.services.grouprecommendation.StandardGroupRecommenderService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

@CompileStatic
@Slf4j
@Service
class EvaluationService {
    @Autowired
    GroupAnalysisService groupAnalysisService
    @Autowired
    StandardGroupRecommenderService groupRecommenderService
    @Autowired
    RestaurantService restaurantService
    @Autowired
    RecommendationContextService contextService

    @Autowired
    EvaluationConfiguration configuration

    @Autowired
    GroupPredictedRatingRepository groupPredictedRatingRepository
    @Autowired
    EvaluationResultRepository evaluationResultRepository

    private RatingNormalizer ratingNormalizer = new RatingNormalizer(0.0, 100.0)

    /**
     * Returns true if the aggregation strategy needs normalized scores
     * @param aggregationStrategyType the type of the aggregation strategy
     * @return true, if a normalization is necessary
     */
    static boolean normalizationNecessary(AggregationStrategyType aggregationStrategyType) {
        switch(aggregationStrategyType) {
            case AggregationStrategyType.APPROVAL_VOTING:
            case AggregationStrategyType.PLURALITY_VOTING:
            case AggregationStrategyType.COPELAND_RULE:
            case AggregationStrategyType.FAIRNESS:
            case AggregationStrategyType.BORDA_COUNT:
            case AggregationStrategyType.MULTIPLICATIVE:
                return true
            default:
                return false
        }
    }

    /**
     * Evaluates all {@link GroupPredictedRating} which match the supplied parameters with all types of fully functional
     * {@link EvaluationMetric} and {@link AggregationStrategyType} and {@link RestaurantRatingType}
     * @param recommenderType the type of the Recommender which was used
     * @param restaurantRatingType the type of restaurant rating
     * @param groupType the type of groups which should be evaluated
     */
    void evaluateRecommendationContexts(RecommenderType recommenderType, GroupType groupType) {
        log.info("Running Evaluation for all Rating Types")
        for(RestaurantRatingType ratingType : RestaurantRatingType.values()) {
            log.info("Rating type ${ratingType}")
            evaluateRecommendationContexts(recommenderType, ratingType, groupType)
        }
        log.info("Finished evaluating all RatingTypes")
    }

    /**
     * Evaluates all {@link GroupPredictedRating} which match the supplied parameters with all types of fully functional
     * {@link EvaluationMetric} and {@link AggregationStrategyType}
     * @param recommenderType the type of the Recommender which was used
     * @param restaurantRatingType the type of restaurant rating
     * @param groupType the type of groups which should be evaluated
     */
    void evaluateRecommendationContexts(RecommenderType recommenderType, RestaurantRatingType restaurantRatingType,
                                        GroupType groupType) {

        Collection<GuratorGroup> groups = groupAnalysisService.getAllGroupsWithType(groupType)
        for(EvaluationMetricType metricType : EvaluationMetricType.values()) {
            //Skip over untested or faulty metrics
            if(metricType == EvaluationMetricType.NDBPM) {
                continue
            }
            log.info("Evaluation Metric ${metricType}")

            for(AggregationStrategyType aggregationStrategyType : AggregationStrategyType.values()) {
                evaluateRecommendationContexts(recommenderType, restaurantRatingType, aggregationStrategyType, metricType, groups)
            }
        }
        log.info("Finished evaluating all Evaluation Metrics")
    }


    /**
     * Evaluates all {@link GroupPredictedRating} which match the supplied parameters with an instance of the supplied
     * {@link EvaluationMetric} and saves the result in the database.
     * @param recommenderType the type of the Recommender which was used
     * @param restaurantRatingType the type of restaurant rating
     * @param strategyType the type of the AggregationStrategy which was used
     * @param evaluationMetricType the type of the evaluation metric which should be created
     * @param groupType the type of groups which should be evaluated
     */
    void evaluateRecommendationContexts(RecommenderType recommenderType, RestaurantRatingType restaurantRatingType,
                                        AggregationStrategyType strategyType, EvaluationMetricType evaluationMetricType,
                                        GroupType groupType) {

        Collection<GuratorGroup> groups = groupAnalysisService.getAllGroupsWithType(groupType)
        evaluateRecommendationContexts(recommenderType, restaurantRatingType, strategyType, evaluationMetricType, groups)
    }

    /**
     * Evaluates all {@link GroupPredictedRating} which match the supplied parameters with an instance of the supplied
     * {@link EvaluationMetric} and saves the result in the database.
     * @param recommenderType the type of the Recommender which was used
     * @param restaurantRatingType the type of restaurant rating
     * @param strategyType the type of the AggregationStrategy which was used
     * @param evaluationMetricType the type of the evaluation metric which should be created
     * @param groups a collection of the groups for which the ratings should be evaluated
     */
    void evaluateRecommendationContexts(RecommenderType recommenderType, RestaurantRatingType restaurantRatingType,
                                        AggregationStrategyType strategyType, EvaluationMetricType evaluationMetricType,
                                        Collection<GuratorGroup> groups) {

        EvaluationMetric metric = EvaluationMetricType.createNewEvaluationMetric(evaluationMetricType)
        configureEvaluationMetric(metric)

        Collection<EvaluationResult> result = evaluateRatings(recommenderType, restaurantRatingType, strategyType, groups, metric)

        evaluationResultRepository.save(result)
        log.info("Saved ${result.size()} results in database")
    }

    /**
     * Configures a supplied {@link EvaluationMetric} according to configuration parameters specified in the
     * {@link EvaluationConfiguration}
     * @param metric
     */
    void configureEvaluationMetric(EvaluationMetric metric) {
        if(metric instanceof PrecisionAtN) {
            (metric as PrecisionAtN).N=configuration.precisionAtNValueofN
        }
        if(metric instanceof SuccessAtN) {
            (metric as SuccessAtN).N=configuration.successAtNValueofN
        }
        if(metric instanceof MSuccessAtN) {
            (metric as MSuccessAtN).N=configuration.mSuccessAtNValueofN
            (metric as MSuccessAtN).M=configuration.mSuccessAtNValueofM
        }
    }

    Double normalizeAndEvaluate(EvaluationMetric evaluationMetric, Collection<GroupRestaurantRating> baseline, Collection<GroupRestaurantRating> testRatings,
                                AggregationStrategyType aggregationStrategyType) {
        Double result
        if(normalizationNecessary(aggregationStrategyType)) {
            result = evaluationMetric.evaluate(baseline, ratingNormalizer.normalizeGroupRatings(testRatings))
        } else {
            result = evaluationMetric.evaluate(baseline, testRatings)
        }

        if(result == Double.NaN || result == Double.POSITIVE_INFINITY || result == Double.NEGATIVE_INFINITY) {
            log.warn("Non numeric Evaluation result")
            return null
        }

        return result
    }

    Collection<EvaluationResult> evaluateRatings(RecommenderType recommenderType, RestaurantRatingType restaurantRatingType, AggregationStrategyType aggregationStrategyType,
                         Collection<GuratorGroup> groups, EvaluationMetric evaluationMetric) {
        Collection<RecommendationContext> contexts =
                contextService.getRecommendationContexts(restaurantRatingType, aggregationStrategyType, recommenderType)

        HashMap<RecommendationContext, Collection<TestAndBaseline>> pairs =
                createTestBaselinePairs(contexts, groups, restaurantRatingType)

        Collection<EvaluationResult> result = new ArrayList<EvaluationResult>()

        for(RecommendationContext context : pairs.keySet()) {

            if(pairs[context] == null) {
                log.warn("Could not find pairs to evaluate for context ${context}")
                continue
            }

            for(TestAndBaseline testAndBaseline : pairs[context]) {
                EvaluationResult evaluationResult = new EvaluationResult()
                evaluationResult.metricType = evaluationMetric.getType()
                evaluationResult.configurationDetails = evaluationMetric.getConfigurationDetails()
                if(normalizationNecessary(aggregationStrategyType))
                    evaluationResult.normalizationDetails = ratingNormalizer.toString()
                else
                    evaluationResult.normalizationDetails = ""
                evaluationResult.recommendationContext = context
                evaluationResult.testRatings = retrieveFromGroupRestaurantRatings(testAndBaseline.testRatings)
                evaluationResult.score = normalizeAndEvaluate(evaluationMetric, testAndBaseline.baselineRatings, testAndBaseline.testRatings, aggregationStrategyType)
                result.add(evaluationResult)
            }
        }
        return result
    }

    private Collection<GroupPredictedRating> retrieveFromGroupRestaurantRatings(Collection<GroupRestaurantRating> groupRestaurantRatings) {
        Collection<GroupPredictedRating> result = new ArrayList<>()

        for(GroupRestaurantRating groupRestaurantRating : groupRestaurantRatings) {
            GroupPredictedRating groupPredictedRating = groupRestaurantRating.ratingEntity
            if(groupPredictedRating == null) {
                throw new RuntimeException("RatingEntity not set")
            }
            result.add(groupPredictedRating)
        }

        return result
    }


    /**
     * Creates a Map of {@link TestAndBaseline} of a combinations of {@link RecommendationContext} and {@link GuratorGroup}
     * @param contexts the contexts
     * @param groups the groups
     * @param restaurantRatingType the restaurantRatingType from which the contexts should be determined
     * @return the resulting Map
     */
    HashMap<RecommendationContext, Collection<TestAndBaseline>> createTestBaselinePairs(Collection<RecommendationContext> contexts,
                Collection<GuratorGroup> groups, RestaurantRatingType restaurantRatingType) {

        HashMap<RecommendationContext, Collection<TestAndBaseline>> result = new HashMap<>()
        for(RecommendationContext context : contexts) {
            result[context] = new ArrayList<TestAndBaseline>()
        }

        for(GuratorGroup group : groups) {

            RecommendationGroup recommendationGroup = groupRecommenderService.getRecommendationGroupFromGuratorGroup(group, restaurantRatingType)

            Collection<GroupRestaurantRating> baselineRatings =
                    groupAnalysisService.getGroupRatings(recommendationGroup, restaurantRatingType)

            for(RecommendationContext context : contexts) {

                Collection<GroupPredictedRating> predictedRatings =
                        groupPredictedRatingRepository.findByGroupAndRecommendationContext(group, context)

                if(predictedRatings.isEmpty()) {
                    continue
                }

                Collection<GroupRestaurantRating> testRatings =
                        groupRecommenderService.convertToGroupRestaurantRatings(predictedRatings)

                TestAndBaseline pair = new TestAndBaseline(groupId: group.id,
                        baselineRatings: baselineRatings, testRatings: testRatings)

                result[context].add(pair)
            }
        }
        return result
    }
}
