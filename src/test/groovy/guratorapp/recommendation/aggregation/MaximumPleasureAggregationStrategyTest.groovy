package guratorapp.recommendation.aggregation

import groovy.test.GroovyAssert
import groovy.transform.CompileStatic
import guratorapp.recommendation.aggregation.MaximumPleasureAggregationStrategy
import guratorapp.recommendation.model.GroupRestaurantRating
import guratorapp.recommendation.model.RecommendationGroup
import guratorapp.recommendation.model.Restaurant
import guratorapp.recommendation.model.User
import org.junit.Assert
import org.junit.Before
import org.junit.Test

/**
 * Tests an {@link guratorapp.recommendation.aggregation.MaximumPleasureAggregationStrategy}
 */
@CompileStatic
class MaximumPleasureAggregationStrategyTest extends GroovyAssert{

    private static final double DELTA = 1e-15

    ArrayList<Restaurant> restaurants
    RecommendationGroup testgroup

    @Before
    void setUp() {
        User user1 = new User([id: 1])
        User user2 = new User([id : 2])
        User user3 = new User([id : 3])

        testgroup = new RecommendationGroup([id: 1])
        testgroup.addUser(user1)
        testgroup.addUser(user2)
        testgroup.addUser(user3)

        Restaurant r1 = new Restaurant([id: 1])
        Restaurant r2 = new Restaurant([id : 2])
        Restaurant r3 = new Restaurant([id : 3])
        Restaurant r4 = new Restaurant([id : 4])
        Restaurant r5 = new Restaurant([id : 5])
        Restaurant r6 = new Restaurant([id : 6])
        Restaurant r7 = new Restaurant([id : 7])
        Restaurant r8 = new Restaurant([id : 8])
        Restaurant r9 = new Restaurant([id : 9])
        Restaurant r10 = new Restaurant([id : 10])

        restaurants = new ArrayList<>()
        restaurants.add(r1)
        restaurants.add(r2)
        restaurants.add(r3)
        restaurants.add(r4)
        restaurants.add(r5)
        restaurants.add(r6)
        restaurants.add(r7)
        restaurants.add(r8)
        restaurants.add(r9)
        restaurants.add(r10)

        user1.addRating(r1, 10.0)
        user1.addRating(r2, 4.0)
        user1.addRating(r3, 3.0)
        user1.addRating(r4, 6.0)
        user1.addRating(r5, 10.0)
        user1.addRating(r6, 9.0)
        user1.addRating(r7, 6.0)
        user1.addRating(r8, 8.0)
        user1.addRating(r9, 10.0)
        user1.addRating(r10, 8.0)

        user2.addRating(r1, 1.0)
        user2.addRating(r2, 9.0)
        user2.addRating(r3, 8.0)
        user2.addRating(r4, 9.0)
        user2.addRating(r5, 7.0)
        user2.addRating(r6, 9.0)
        user2.addRating(r7, 6.0)
        user2.addRating(r8, 9.0)
        user2.addRating(r9, 3.0)
        user2.addRating(r10, 8.0)

        user3.addRating(r1, 10.0)
        user3.addRating(r2, 5.0)
        user3.addRating(r3, 2.0)
        user3.addRating(r4, 7.0)
        user3.addRating(r5, 9.0)
        user3.addRating(r6, 8.0)
        user3.addRating(r7, 5.0)
        user3.addRating(r8, 6.0)
        user3.addRating(r9, 7.0)
        user3.addRating(r10, 6.0)
    }

    @Test
    void testAggregateRatings() {
        Collection<GroupRestaurantRating> result = new MaximumPleasureAggregationStrategy().aggregateRatings(restaurants, testgroup)

        Assert.assertEquals(10, result.size())

        long firstId = result[0].restaurantId

        Assert.assertTrue(firstId == 1 as long || firstId == 5 as long || firstId == 9 as long)
        Assert.assertEquals(7 as long, result[9].restaurantId)

        Assert.assertEquals(10.0 , result[0].score, DELTA)
        Assert.assertEquals(10.0 , result[1].score, DELTA)
        Assert.assertEquals(10.0 , result[2].score, DELTA)
        Assert.assertEquals(9.0 , result[3].score, DELTA)
        Assert.assertEquals(9.0 , result[4].score, DELTA)
        Assert.assertEquals(9.0 , result[5].score, DELTA)
        Assert.assertEquals(9.0 , result[6].score, DELTA)
        Assert.assertEquals(8.0 , result[7].score, DELTA)
        Assert.assertEquals(8.0 , result[8].score, DELTA)
        Assert.assertEquals(6.0 , result[9].score, DELTA)
    }
}
