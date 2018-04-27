package guratorapp.recommendation.evaluation

import groovy.transform.CompileStatic
import guratorapp.recommendation.model.GroupRestaurantRating

/**
 * Wrapper Class for a pair of corresponding baseline and test ratings in the form of {@link GroupRestaurantRating}.
 */
@CompileStatic
class TestAndBaseline {
    long groupId
    Collection<GroupRestaurantRating> baselineRatings
    Collection<GroupRestaurantRating> testRatings
}
