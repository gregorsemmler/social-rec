package guratorapp.services.grouprecommendation

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.configuration.RecommenderConfiguration
import guratorapp.model.GuratorGroup
import guratorapp.recommendation.model.RecommendationGroup
import guratorapp.recommendation.model.Restaurant
import guratorapp.recommendation.model.RestaurantRatingType
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.beans.factory.annotation.Qualifier
import org.springframework.stereotype.Service

import javax.annotation.PostConstruct
/**
 * Recommends Items to {@link GuratorGroup}
 */
@Slf4j
@CompileStatic
@Service
class StandardGroupRecommenderService extends GroupRecommenderService {

    @Autowired
    StandardGroupRecommenderService(@Qualifier("StandardRecommenderConfiguration") RecommenderConfiguration configuration) {
        super(configuration, RecommenderType.STANDARD)
    }

    @PostConstruct
    private void initialize() {
        if(configuration.aggregationStrategyType != null) {
            setAggregationStrategy(configuration.aggregationStrategyType)
        }
    }

    @Override
    RecommendationGroup preTransformGroup(RecommendationGroup group, Collection<Restaurant> restaurants,
                  RestaurantRatingType ratingType) {
        return group
    }
}
