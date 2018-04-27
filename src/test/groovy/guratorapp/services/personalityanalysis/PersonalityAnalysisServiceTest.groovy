package guratorapp.services.personalityanalysis

import groovy.test.GroovyAssert
import groovy.transform.CompileStatic
import guratorapp.model.Personality
import org.junit.Assert
import org.junit.Before
import org.junit.Test
/**
 * Tests the {@link PersonalityAnalysisService}
 */
@CompileStatic
class PersonalityAnalysisServiceTest extends GroovyAssert {

    private static final double DELTA = 1e-15

    PersonalityAnalysisService personalityAnalysisService

    @Before
    void setUp() {
        personalityAnalysisService = new PersonalityAnalysisService()
    }

    @Test
    void testComputeConflictModeWeight() {
        Personality personality1 = new Personality(competing: 12, cooperating: 9, compromising: 5, avoiding: 2,
                accommodating: 2)
        Personality personality2 = new Personality(competing: 2, cooperating: 10, compromising: 7, avoiding: 4,
                accommodating: 7)
        Personality personality3 = new Personality(competing: 1, cooperating: 7, compromising: 11, avoiding: 5,
                accommodating: 6)
        Personality personality4 = new Personality(competing: 0, cooperating: 6, compromising: 7, avoiding: 11,
                accommodating: 6)
        Personality personality5 = new Personality(competing: 1, cooperating: 2, compromising: 9, avoiding: 6,
                accommodating: 12)

        Assert.assertEquals(2*0.8, personalityAnalysisService.computeConflictModeWeight(personality1), DELTA)
        Assert.assertEquals(2*0.20000000000000007, personalityAnalysisService.computeConflictModeWeight(personality2), DELTA)
        Assert.assertEquals(2*0.4625, personalityAnalysisService.computeConflictModeWeight(personality3), DELTA)
        Assert.assertEquals(2*0.4625, personalityAnalysisService.computeConflictModeWeight(personality4), DELTA)
        Assert.assertEquals(2*0.19999999999999998, personalityAnalysisService.computeConflictModeWeight(personality5), DELTA)
    }

}
