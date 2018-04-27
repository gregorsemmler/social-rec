package guratorapp.controllers

import com.fasterxml.jackson.databind.ObjectMapper
import groovy.transform.CompileStatic
import guratorapp.model.GroupType
import guratorapp.recommendation.model.RestaurantRatingType
import guratorapp.services.GroupAnalysisService
import guratorapp.services.RecommendationContextService
import guratorapp.services.RestaurantService
import guratorapp.services.individualrecommendation.IndividualRecommenderService
import guratorapp.services.jobmanagement.JobManagementService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.bind.annotation.RestController

import javax.servlet.http.HttpServletResponse
/**
 * Delivers functionality to recommend restaurants to participants.
 */
@CompileStatic
@RestController
class IndividualRecommenderController {

    @Autowired
    JobManagementService jobManagementService

    @Autowired
    RecommendationContextService recommendationContextService

    @Autowired
    RestaurantService restaurantService

    @Autowired
    GroupAnalysisService groupAnalysisService

    @Autowired
    IndividualRecommenderService individualRecommenderService

    @Autowired
    ObjectMapper mapper

    @RequestMapping(value = "/recommend")
    String recommendToUser(@RequestParam(value = "user-id") Long userId,
                           @RequestParam(value = "rating-type") String ratingType,
                           HttpServletResponse response) {
        RestaurantRatingType restaurantRatingType

        try {
            restaurantRatingType = RestaurantRatingType.fromString(ratingType)
        } catch(IllegalArgumentException e) {
            response.sendError(400, e.getMessage())
            return ""
        }

        return individualRecommenderService.recommendItemsToUserAsJson(userId,restaurantRatingType,response)
    }


    @RequestMapping(value = "/predict")
    String predictRating(@RequestParam(value = "user-id") Long userId,
                            @RequestParam(value = "restaurant-id") Long restaurantId,
                           @RequestParam(value = "rating-type") String ratingType,
                           HttpServletResponse response) {
        RestaurantRatingType restaurantRatingType

        try {
            restaurantRatingType = RestaurantRatingType.fromString(ratingType)
        } catch(IllegalArgumentException e) {
            response.sendError(400, e.getMessage())
            return ""
        }

        return mapper.writeValueAsString(individualRecommenderService.predictItemRating(userId, restaurantId, restaurantRatingType))
    }

    @RequestMapping(value = "/missing-individual-ratings")
    String checkSurvey(@RequestParam(value = "group-type", required = false) String groupTypeString, HttpServletResponse response) {

        response.setContentType("application/json")
        if(groupTypeString == null) {
            return mapper.writeValueAsString(groupAnalysisService.findMissingIndividualSurveysForAllGroups())
        }

        GroupType groupType
        try {
            groupType = groupAnalysisService.getGroupTypeFromId(groupTypeString)
        } catch(IllegalArgumentException e) {
            response.sendError(400, e.getMessage())
            return ""
        }

        return mapper.writeValueAsString(groupAnalysisService.findMissingIndividualSurveysByGroupType(groupType))
    }

    /**
     * Rebuilds all combined ratings on the basis of the current settings of the {@link IndividualRecommenderService}.
     * Warning: This process is computationally expensive
     */
    @RequestMapping(value = "/rebuild-all-combined-ratings")
    void rebuildAllCombinedRatings() {
        groupAnalysisService.rebuildCombinedRatings()
    }


}
