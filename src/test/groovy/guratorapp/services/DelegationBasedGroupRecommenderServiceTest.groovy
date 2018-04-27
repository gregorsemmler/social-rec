package guratorapp.services

import groovy.test.GroovyAssert
import groovy.transform.CompileStatic
import guratorapp.configuration.DelegationBasedRecommenderConfiguration
import guratorapp.model.Participant
import guratorapp.model.Personality
import guratorapp.recommendation.aggregation.AggregationStrategyType
import guratorapp.recommendation.model.DelegationBasedRating
import guratorapp.recommendation.model.RecommendationGroup
import guratorapp.recommendation.model.Restaurant
import guratorapp.recommendation.model.User
import guratorapp.services.grouprecommendation.DelegationBasedGroupRecommenderService
import guratorapp.services.personalityanalysis.PersonalityAnalysisService
import org.junit.Assert
import org.junit.Before
import org.junit.Test

import static org.mockito.Mockito.*

@CompileStatic
class DelegationBasedGroupRecommenderServiceTest extends GroovyAssert {

    private static final double DELTA = 1e-15

    ArrayList<Restaurant> restaurants
    RecommendationGroup testgroup
    ParticipantAnalysisService mockParticipantAnalysisService
    PersonalityAnalysisService personalityAnalysisService
    DelegationBasedGroupRecommenderService socialGroupRecommenderService
    User user1
    User user2
    User user3
    Restaurant r1
    Restaurant r2
    Restaurant r3
    Restaurant r4
    Restaurant r5
    Restaurant r6
    Restaurant r7
    Restaurant r8
    Restaurant r9
    Restaurant r10

    @Before
    void setUp() {
        user1 = new User([id: 1])
        user2 = new User([id : 2])
        user3 = new User([id : 3])
        Participant p1 = new Participant(id: 1)
        Participant p2 = new Participant(id: 2)
        Participant p3 = new Participant(id: 3)
        user1.participant = p1
        user2.participant = p2
        user3.participant = p3
        Personality pers1 = new Personality(competing: 12, cooperating: 9, compromising: 5, avoiding: 2, accommodating: 2)
        Personality pers2 = new Personality(competing: 0, cooperating: 6, compromising: 7, avoiding: 11, accommodating: 6)
        Personality pers3 = new Personality(competing: 1, cooperating: 7, compromising: 11, avoiding: 5, accommodating: 6)
        pers1.participant = p1
        pers2.participant = p2
        pers3.participant = p3
        p1.personality = pers1
        p2.personality = pers2
        p3.personality = pers3


        testgroup = new RecommendationGroup([id: 1])
        testgroup.addUser(user1)
        testgroup.addUser(user2)
        testgroup.addUser(user3)

        r1 = new Restaurant(id: 1)
        r2 = new Restaurant(id : 2)
        r3 = new Restaurant(id : 3)
        r4 = new Restaurant(id : 4)
        r5 = new Restaurant(id : 5)
        r6 = new Restaurant(id : 6)
        r7 = new Restaurant(id : 7)
        r8 = new Restaurant(id : 8)
        r9 = new Restaurant(id : 9)
        r10 = new Restaurant(id : 10)

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

        mockParticipantAnalysisService = mock(ParticipantAnalysisService.class)
        when(mockParticipantAnalysisService.getTrust(p1, p2)).thenReturn(0.6 as double)
        when(mockParticipantAnalysisService.getTrust(p1, p3)).thenReturn(0.3 as double)
        when(mockParticipantAnalysisService.getTrust(p2, p1)).thenReturn(0.7 as double)
        when(mockParticipantAnalysisService.getTrust(p2, p3)).thenReturn(0.8 as double)
        when(mockParticipantAnalysisService.getTrust(p3, p1)).thenReturn(0.2 as double)
        when(mockParticipantAnalysisService.getTrust(p3, p2)).thenReturn(0.6 as double)

        personalityAnalysisService = new PersonalityAnalysisService()

        DelegationBasedRecommenderConfiguration configuration = new DelegationBasedRecommenderConfiguration()
        configuration.aggregationStrategyType = AggregationStrategyType.AVERAGE
        configuration.approvalVotingApprovalThreshold = 50.0 as Double
        configuration.averageWithoutMiseryMiseryThreshold = 33.33 as Double

        socialGroupRecommenderService = new DelegationBasedGroupRecommenderService(configuration)
        socialGroupRecommenderService.personalityAnalysisService = personalityAnalysisService
        socialGroupRecommenderService.participantAnalysisService = mockParticipantAnalysisService
    }

    @Test
    void testGenerateDelegationBasedRating() {

        DelegationBasedRating rating11 = socialGroupRecommenderService.generateDelegationBasedRating(user1, testgroup, r1)
        DelegationBasedRating rating12 = socialGroupRecommenderService.generateDelegationBasedRating(user1, testgroup, r2)
        DelegationBasedRating rating13 = socialGroupRecommenderService.generateDelegationBasedRating(user1, testgroup, r3)
        DelegationBasedRating rating14 = socialGroupRecommenderService.generateDelegationBasedRating(user1, testgroup, r4)
        DelegationBasedRating rating15 = socialGroupRecommenderService.generateDelegationBasedRating(user1, testgroup, r5)
        DelegationBasedRating rating16 = socialGroupRecommenderService.generateDelegationBasedRating(user1, testgroup, r6)
        DelegationBasedRating rating17 = socialGroupRecommenderService.generateDelegationBasedRating(user1, testgroup, r7)
        DelegationBasedRating rating18 = socialGroupRecommenderService.generateDelegationBasedRating(user1, testgroup, r8)
        DelegationBasedRating rating19 = socialGroupRecommenderService.generateDelegationBasedRating(user1, testgroup, r9)
        DelegationBasedRating rating110 = socialGroupRecommenderService.generateDelegationBasedRating(user1, testgroup, r10)

        DelegationBasedRating rating21 = socialGroupRecommenderService.generateDelegationBasedRating(user2, testgroup, r1)
        DelegationBasedRating rating22 = socialGroupRecommenderService.generateDelegationBasedRating(user2, testgroup, r2)
        DelegationBasedRating rating23 = socialGroupRecommenderService.generateDelegationBasedRating(user2, testgroup, r3)
        DelegationBasedRating rating24 = socialGroupRecommenderService.generateDelegationBasedRating(user2, testgroup, r4)
        DelegationBasedRating rating25 = socialGroupRecommenderService.generateDelegationBasedRating(user2, testgroup, r5)
        DelegationBasedRating rating26 = socialGroupRecommenderService.generateDelegationBasedRating(user2, testgroup, r6)
        DelegationBasedRating rating27 = socialGroupRecommenderService.generateDelegationBasedRating(user2, testgroup, r7)
        DelegationBasedRating rating28 = socialGroupRecommenderService.generateDelegationBasedRating(user2, testgroup, r8)
        DelegationBasedRating rating29 = socialGroupRecommenderService.generateDelegationBasedRating(user2, testgroup, r9)
        DelegationBasedRating rating210 = socialGroupRecommenderService.generateDelegationBasedRating(user2, testgroup, r10)

        DelegationBasedRating rating31 = socialGroupRecommenderService.generateDelegationBasedRating(user3, testgroup, r1)
        DelegationBasedRating rating32 = socialGroupRecommenderService.generateDelegationBasedRating(user3, testgroup, r2)
        DelegationBasedRating rating33 = socialGroupRecommenderService.generateDelegationBasedRating(user3, testgroup, r3)
        DelegationBasedRating rating34 = socialGroupRecommenderService.generateDelegationBasedRating(user3, testgroup, r4)
        DelegationBasedRating rating35 = socialGroupRecommenderService.generateDelegationBasedRating(user3, testgroup, r5)
        DelegationBasedRating rating36 = socialGroupRecommenderService.generateDelegationBasedRating(user3, testgroup, r6)
        DelegationBasedRating rating37 = socialGroupRecommenderService.generateDelegationBasedRating(user3, testgroup, r7)
        DelegationBasedRating rating38 = socialGroupRecommenderService.generateDelegationBasedRating(user3, testgroup, r8)
        DelegationBasedRating rating39 = socialGroupRecommenderService.generateDelegationBasedRating(user3, testgroup, r9)
        DelegationBasedRating rating310 = socialGroupRecommenderService.generateDelegationBasedRating(user3, testgroup, r10)

        Assert.assertEquals(1.6, personalityAnalysisService.getDelegationBasedConflictModeWeight(user1.participant), DELTA)
        Assert.assertEquals(0.925, personalityAnalysisService.getDelegationBasedConflictModeWeight(user2.participant), DELTA)
        Assert.assertEquals(0.925, personalityAnalysisService.getDelegationBasedConflictModeWeight(user3.participant), DELTA)

        Assert.assertEquals(2.332894736842105 ,rating11.score, DELTA)
        Assert.assertEquals(4.069736842105263 ,rating12.score, DELTA)
        Assert.assertEquals(3.2802631578947365 ,rating13.score, DELTA)
        Assert.assertEquals(4.385526315789473 ,rating14.score, DELTA)
        Assert.assertEquals(4.069736842105263 ,rating15.score, DELTA)
        Assert.assertEquals(4.543421052631579 ,rating16.score, DELTA)
        Assert.assertEquals(3.122368421052631 ,rating17.score, DELTA)
        Assert.assertEquals(4.227631578947368 ,rating18.score, DELTA)
        Assert.assertEquals(2.4907894736842104 ,rating19.score, DELTA)
        Assert.assertEquals(3.911842105263158 ,rating110.score, DELTA)
        Assert.assertEquals(6.744 ,rating21.score, DELTA)
        Assert.assertEquals(3.464 ,rating22.score, DELTA)
        Assert.assertEquals(2.2239999999999998 ,rating23.score, DELTA)
        Assert.assertEquals(4.664 ,rating24.score, DELTA)
        Assert.assertEquals(6.424000000000001 ,rating25.score, DELTA)
        Assert.assertEquals(5.824 ,rating26.score, DELTA)
        Assert.assertEquals(4.023999999999999 ,rating27.score, DELTA)
        Assert.assertEquals(4.904 ,rating28.score, DELTA)
        Assert.assertEquals(5.784 ,rating29.score, DELTA)
        Assert.assertEquals(4.904 ,rating210.score, DELTA)
        Assert.assertEquals(1.9305555555555556 ,rating31.score, DELTA)
        Assert.assertEquals(3.9305555555555562 ,rating32.score, DELTA)
        Assert.assertEquals(3.4861111111111116 ,rating33.score, DELTA)
        Assert.assertEquals(4.152777777777778 ,rating34.score, DELTA)
        Assert.assertEquals(3.9305555555555554 ,rating35.score, DELTA)
        Assert.assertEquals(4.486111111111111 ,rating36.score, DELTA)
        Assert.assertEquals(3.1527777777777777 ,rating37.score, DELTA)
        Assert.assertEquals(4.375 ,rating38.score, DELTA)
        Assert.assertEquals(2.5972222222222223 ,rating39.score, DELTA)
        Assert.assertEquals(4.041666666666667 ,rating310.score, DELTA)
    }
}
