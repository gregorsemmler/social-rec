package guratorapp.controllers

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.services.GroupAnalysisService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestMethod
import org.springframework.web.bind.annotation.RestController
import guratorapp.model.GuratorGroup

import javax.servlet.http.HttpServletResponse

/**
 * Implements functionality to create own groups which can be used in the recommendation process.
 */
@CompileStatic
@Slf4j
@RestController
class GroupController {

    @Autowired
    GroupAnalysisService groupAnalysisService

    /**
     * Creates and stores a collection of subgroups in the database. The available {@link GuratorGroup} are examined
     * to find if one of the requested subgroup combinations are a possible sub group of it.
     * Only one subgroup per group is generated, one of the biggest size.
     * A threshold can be supplied for the subgroup to group size ratio, so that a group is only generated if it has
     * enough members.
     *
     * @param request the request Body
     * @param response the response object for error cases
     */
    @RequestMapping(value = "/create-subgroups", method= RequestMethod.POST)
    void createSubgroups(@RequestBody Map<String,Object> request, HttpServletResponse response) {

        double sizeRatioThreshold = 0.5
        Object threshold = request["sizeRatioThreshold"]
        if(threshold != null && threshold instanceof Double) {
            sizeRatioThreshold = threshold as double
        }

        Object subIds = request["subgroupIds"]
        if(subIds == null || !(subIds instanceof List<List<Integer>>)) {
            response.sendError(400)
            return
        }

        List<List<Integer>> subgroupIds =  ( List<List<Integer>> ) subIds
        groupAnalysisService.generateAndSaveSubgroups(subgroupIds, sizeRatioThreshold)
    }

    /**
     * Determines users with missing ratings in all standard (non-generated) groups.
     */
    @RequestMapping(value = "/determine-users-with-missing-ratings")
    void determineNumberOfUsersWithMissingRatings() {
        groupAnalysisService.determineNumberOfUsersWithMissingRatings()
    }

    /**
     * For all standard groups, determines all missing user surveys between group members
     */
    @RequestMapping(value = "/determine-missing-user-surveys")
    void determineMissingUserSurveys() {
        groupAnalysisService.determineMissingUserSurveys()
    }

    /**
     * For all groups and participants analyses and logs different stats about the conflict mode weights
     */
    @RequestMapping(value = "/analyse-cmw")
    void analyseConflictModeWeight() {
        groupAnalysisService.analyseConflictModeWeight()
    }

    /**
     * Analyses and logs different stats about group sizes
     */
    @RequestMapping(value = "/analyse-group-sizes")
    void analyseGroupSizes() {
        groupAnalysisService.analyseGroupSizesAndSurveys()
    }
}
