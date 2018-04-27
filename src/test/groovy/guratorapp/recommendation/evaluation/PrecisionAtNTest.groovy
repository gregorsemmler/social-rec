package guratorapp.recommendation.evaluation

import groovy.test.GroovyAssert
import groovy.transform.CompileStatic
import guratorapp.recommendation.model.GroupRestaurantRating
import guratorapp.recommendation.model.RecommendationGroup
import guratorapp.recommendation.model.Restaurant
import guratorapp.recommendation.model.User
import org.junit.Assert
import org.junit.Before
import org.junit.Test

/**
 * Tests a {@link SuccessAtN} metric
 */
@CompileStatic
class PrecisionAtNTest extends GroovyAssert {

    private static final double DELTA = 1e-15

    RecommendationGroup testgroup
    ArrayList<GroupRestaurantRating> baselineRatings
    ArrayList<GroupRestaurantRating> evaluateRatings

    @Before
    void setUp() {
        User peter = new User([id: 1])
        User jane = new User([id : 2])
        User mary = new User([id : 3])

        testgroup = new RecommendationGroup([id: 1])

        testgroup.addUser(peter)
        testgroup.addUser(jane)
        testgroup.addUser(mary)

        Restaurant a = new Restaurant([id: 1])
        Restaurant b = new Restaurant([id : 2])
        Restaurant c = new Restaurant([id : 3])
        Restaurant d = new Restaurant([id : 4])
        Restaurant e = new Restaurant([id : 5])
        Restaurant f = new Restaurant([id : 6])
        Restaurant g = new Restaurant([id : 7])
        Restaurant h = new Restaurant([id : 8])
        Restaurant i = new Restaurant([id : 9])
        Restaurant j = new Restaurant([id : 10])

        baselineRatings = new ArrayList<>()
        evaluateRatings = new ArrayList<>()

        baselineRatings.add(new GroupRestaurantRating(testgroup, a, 1.0))
        baselineRatings.add(new GroupRestaurantRating(testgroup, b, 9.0))
        baselineRatings.add(new GroupRestaurantRating(testgroup, c, 3.0))
        baselineRatings.add(new GroupRestaurantRating(testgroup, d, 5.0))
        baselineRatings.add(new GroupRestaurantRating(testgroup, e, 10.0))
        baselineRatings.add(new GroupRestaurantRating(testgroup, f, 2.0))
        baselineRatings.add(new GroupRestaurantRating(testgroup, g, 4.0))
        baselineRatings.add(new GroupRestaurantRating(testgroup, h, 6.0))
        baselineRatings.add(new GroupRestaurantRating(testgroup, i, 8.0))
        baselineRatings.add(new GroupRestaurantRating(testgroup, j, 7.0))

        evaluateRatings.add(new GroupRestaurantRating(testgroup, a, 2.0))
        evaluateRatings.add(new GroupRestaurantRating(testgroup, b, 9.0))
        evaluateRatings.add(new GroupRestaurantRating(testgroup, c, 1.0))
        evaluateRatings.add(new GroupRestaurantRating(testgroup, d, 5.0))
        evaluateRatings.add(new GroupRestaurantRating(testgroup, e, 6.0))
        evaluateRatings.add(new GroupRestaurantRating(testgroup, f, 5.0))
        evaluateRatings.add(new GroupRestaurantRating(testgroup, g, 3.0))
        evaluateRatings.add(new GroupRestaurantRating(testgroup, h, 4.0))
        evaluateRatings.add(new GroupRestaurantRating(testgroup, i, 8.0))
        evaluateRatings.add(new GroupRestaurantRating(testgroup, j, 7.0))
    }

    @Test
    void testEvaluate() {
        PrecisionAtN precisionAtN = new PrecisionAtN()
        precisionAtN.N = 3

        double result = precisionAtN.evaluate(baselineRatings, evaluateRatings)
        Assert.assertEquals(0.6666666666666666, result, DELTA)
    }

}

