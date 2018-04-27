package guratorapp.services

import groovy.transform.CompileStatic
import guratorapp.recommendation.model.RecommendationGroup
import guratorapp.recommendation.model.Restaurant
import guratorapp.recommendation.model.User
import org.junit.Assert
import org.junit.Test

@CompileStatic
class GroupAnalysisServiceTest {

    @Test
    void testCheckIfAllRatingsArePresent() {
        GroupAnalysisService groupAnalysisService = new GroupAnalysisService()

        RecommendationGroup group = new RecommendationGroup()
        Collection<Restaurant> restaurants = new ArrayList<Restaurant>()

        Assert.assertTrue(groupAnalysisService.checkIfAllRatingsArePresent(group, restaurants))

        User u1 = new User(id: 1)
        User u2 = new User(id: 2)

        group.addUser(u1)
        group.addUser(u2)

        Restaurant r1 = new Restaurant(id: 1)
        Restaurant r2 = new Restaurant(id: 2)

        restaurants.add(r1)
        restaurants.add(r2)

        u1.addRating(r1, 1.0)
        u1.addRating(r2, 1.0)
        u2.addRating(r1, 1.0)

        Assert.assertFalse(groupAnalysisService.checkIfAllRatingsArePresent(group, restaurants))

        u2.addRating(r2, 1.0)

        Assert.assertTrue(groupAnalysisService.checkIfAllRatingsArePresent(group, restaurants))
    }
}
