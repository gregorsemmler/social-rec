package guratorapp.recommendation.evaluation

import groovy.test.GroovyAssert
import groovy.transform.CompileStatic
import guratorapp.recommendation.model.*
import org.junit.Assert
import org.junit.Before
import org.junit.Test

@CompileStatic
class RatingNormalizerTest extends GroovyAssert {

    private static final double DELTA = 1e-15

    RecommendationGroup testgroup
    ArrayList<RestaurantRating> ratings
    ArrayList<GroupRestaurantRating> groupRatings

    @Before
    void setUp() {
        User u1 = new User(id: 1)
        User u2 = new User(id : 2)
        User u3 = new User(id : 3)

        testgroup = new RecommendationGroup(id: 1)

        testgroup.addUser(u1)
        testgroup.addUser(u2)
        testgroup.addUser(u3)

        Restaurant a = new Restaurant(id: 1)
        Restaurant b = new Restaurant(id : 2)
        Restaurant c = new Restaurant(id : 3)
        Restaurant d = new Restaurant(id : 4)
        Restaurant e = new Restaurant(id : 5)
        Restaurant f = new Restaurant(id : 6)
        Restaurant g = new Restaurant(id : 7)
        Restaurant h = new Restaurant(id : 8)
        Restaurant i = new Restaurant(id : 9)
        Restaurant j = new Restaurant(id : 10)

        ratings = new ArrayList<>()
        groupRatings = new ArrayList<>()

        groupRatings.add(new GroupRestaurantRating(testgroup, a, 1.0))
        groupRatings.add(new GroupRestaurantRating(testgroup, b, 9.0))
        groupRatings.add(new GroupRestaurantRating(testgroup, c, 3.0))

        a.addRating(u1, 10.0)
        b.addRating(u1, 7.0)
        c.addRating(u1, 2.0)
        d.addRating(u1, 6.0)
        e.addRating(u1, 9.0)
        f.addRating(u1, 8.0)
        g.addRating(u1, 6.0)
        h.addRating(u1, 0.0)
        i.addRating(u1, 7.0)
        j.addRating(u1, 10.0)

        ratings.add(a.getRatingFrom(u1))
        ratings.add(b.getRatingFrom(u1))
        ratings.add(c.getRatingFrom(u1))
        ratings.add(d.getRatingFrom(u1))
        ratings.add(e.getRatingFrom(u1))
        ratings.add(f.getRatingFrom(u1))
        ratings.add(g.getRatingFrom(u1))
        ratings.add(h.getRatingFrom(u1))
        ratings.add(i.getRatingFrom(u1))
        ratings.add(j.getRatingFrom(u1))


    }

    @Test
    void testNormalizeRatings() {
        RatingNormalizer normalizer = new RatingNormalizer(0.0, 100.0)

        Collection<RestaurantRating> normalized = normalizer.normalizeRatings(ratings)

        for(RestaurantRating rating : normalized) {
            double expected = Double.NaN
            switch(rating.restaurant.id) {
                case 1: expected = 100.0
                    break
                case 2: expected = 70.0
                    break
                case 3: expected = 20.0
                    break
                case 4: expected = 60.0
                    break
                case 5: expected = 90.0
                    break
                case 6: expected = 80.0
                    break
                case 7: expected = 60.0
                    break
                case 8: expected = 0.0
                    break
                case 9: expected = 70.0
                    break
                case 10: expected = 100.0
                    break
            }
            Assert.assertEquals(expected, rating.score, DELTA)
        }
    }

    @Test
    void testNormalizeRatings_GroupRestaurantRatings() {
        RatingNormalizer normalizer = new RatingNormalizer(0.0, 100.0)

        Collection<GroupRestaurantRating> normalized = normalizer.normalizeGroupRatings(groupRatings)

        for(GroupRestaurantRating rating : normalized) {
            double expected = Double.NaN
            switch(rating.restaurant.id) {
                case 1: expected = 0.0
                    break
                case 2: expected = 100.0
                    break
                case 3: expected = 25.0
                    break
            }
            Assert.assertEquals(expected, rating.score, DELTA)
        }
    }
}
