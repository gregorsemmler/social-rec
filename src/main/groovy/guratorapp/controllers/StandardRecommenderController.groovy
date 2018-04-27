package guratorapp.controllers

import com.fasterxml.jackson.databind.ObjectMapper
import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.model.GroupType
import guratorapp.recommendation.aggregation.AggregationStrategyType
import guratorapp.recommendation.model.RestaurantRatingType
import guratorapp.services.grouprecommendation.StandardGroupRecommenderService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.bind.annotation.RestController

import javax.servlet.http.HttpServletResponse
/**
 * Delivers functionality to recommend restaurants to groups.
 */
@RestController
@Slf4j
@CompileStatic
class StandardRecommenderController {
    @Autowired
    StandardGroupRecommenderService standardRecommender
    
    @Autowired
    ObjectMapper mapper

    @RequestMapping(value = "/set-aggregation-strategy")
    String setAggregationStrategy(@RequestParam(value = "aggregation-type") String aggregationType,
            HttpServletResponse response) {

        AggregationStrategyType strategyType = AggregationStrategyType.fromString(aggregationType)
        standardRecommender.setAggregationStrategy(strategyType)

    }

    @RequestMapping(value = "/aggregate-and-save-ratings-for-group")
    void aggregateAndSaveRatings(@RequestParam(value = "group-id") Integer groupId,
                                 @RequestParam(value = "aggregation-type") String aggregationType,
                                 @RequestParam(value = "rating-type") String ratingTypeString,
                                 HttpServletResponse response) {
        AggregationStrategyType strategyType = AggregationStrategyType.fromString(aggregationType)
        RestaurantRatingType restaurantRatingType = RestaurantRatingType.fromString(ratingTypeString)

        standardRecommender.recommendRatings(groupId, strategyType, restaurantRatingType)
    }

    @RequestMapping(value = "/aggregate-and-save-ratings")
    void aggregateAndSaveRatings( @RequestParam(value = "group-type", required = false) String groupTypeString,
                                 @RequestParam(value = "aggregation-type", required = false) String aggregationTypeString,
                                 @RequestParam(value = "rating-type", required = false) String ratingTypeString,
                                 HttpServletResponse response) {
        if(ratingTypeString == null && aggregationTypeString != null) {
            response.sendError(500, "rating-type must be supplied if an aggregation-type is supplied")
            return
        }
        GroupType groupType = null
        if(groupTypeString != null)
            groupType = GroupType.fromString(groupTypeString)

        RestaurantRatingType restaurantRatingType = null
        if(ratingTypeString != null)
            restaurantRatingType = RestaurantRatingType.fromString(ratingTypeString)

        //loop over all groupTypes
        if(groupType == null) {
            for(GroupType gt : GroupType.allTypes()) {
                log.info("GroupType ${gt}")
                if(aggregationTypeString == null) {
                    if(restaurantRatingType == null) {
                        standardRecommender.recommendRatings(gt)
                    } else {
                        standardRecommender.recommendRatings(gt, restaurantRatingType)
                    }
                } else {
                    AggregationStrategyType strategyType = AggregationStrategyType.fromString(aggregationTypeString)
                    standardRecommender.recommendRatings(gt, strategyType, restaurantRatingType)
                }

            }
            return
        }

        if(aggregationTypeString == null) {
            if(restaurantRatingType == null) {
                standardRecommender.recommendRatings(groupType)
                return
            }

            standardRecommender.recommendRatings(groupType, restaurantRatingType)
            return
        }

        AggregationStrategyType strategyType = AggregationStrategyType.fromString(aggregationTypeString)
        standardRecommender.recommendRatings(groupType, strategyType, restaurantRatingType)
    }
}
