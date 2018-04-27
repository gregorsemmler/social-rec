package guratorapp.services

import groovy.test.GroovyAssert
import groovy.transform.CompileStatic
import guratorapp.configuration.SocialContextRecommenderConfiguration
import guratorapp.model.Participant
import guratorapp.model.Personality
import guratorapp.model.UserSurvey
import guratorapp.recommendation.aggregation.AggregationStrategyType
import guratorapp.recommendation.model.RecommendationGroup
import guratorapp.recommendation.model.Restaurant
import guratorapp.recommendation.model.SocialContextRating
import guratorapp.recommendation.model.User
import guratorapp.services.grouprecommendation.SocialContextGroupRecommenderService
import guratorapp.services.grouprecommendation.SocialContextRelation
import guratorapp.services.personalityanalysis.PersonalityAnalysisService
import org.junit.Assert
import org.junit.Before
import org.junit.Test

import static org.mockito.Mockito.mock
import static org.mockito.Mockito.when

@CompileStatic
class SocialContextGroupRecommenderServiceTest extends GroovyAssert {

    private static final double DELTA = 1e-15

    ArrayList<Restaurant> restaurants
    RecommendationGroup testgroup
    SocialContextRecommenderConfiguration configuration
    ParticipantAnalysisService mockParticipantAnalysisService
    PersonalityAnalysisService personalityAnalysisService
    SocialContextGroupRecommenderService socialContextRecommenderService
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
        user1 = new User(id: 1)
        user2 = new User(id : 2)
        user3 = new User(id : 3)
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

        UserSurvey survey12, survey13, survey21, survey23, survey31, survey32
        survey12 = new UserSurvey(domainExpertise: 60, socialCapital: 95, tieStrength: 14, socialSimilarity: 75,
                socialContextSimilarity: 34, sympathy: 41, socialHierarchy: 88)
        survey13 = new UserSurvey(domainExpertise: 30, socialCapital: 24, tieStrength: 8, socialSimilarity: 79,
                socialContextSimilarity: 31, sympathy: 20, socialHierarchy: 13)
        survey21 = new UserSurvey(domainExpertise: 70, socialCapital: 66, tieStrength: 81, socialSimilarity: 46,
                socialContextSimilarity: 70, sympathy: 74, socialHierarchy: 100)
        survey23 = new UserSurvey(domainExpertise: 80, socialCapital: 10, tieStrength: 14, socialSimilarity: 44,
                socialContextSimilarity: 92, sympathy: 47, socialHierarchy: 74)
        survey31 = new UserSurvey(domainExpertise: 20, socialCapital: 36, tieStrength: 29, socialSimilarity: 65,
                socialContextSimilarity: 98, sympathy: 20, socialHierarchy: 90)
        survey32 = new UserSurvey(domainExpertise: 60, socialCapital: 81, tieStrength: 20, socialSimilarity: 4,
                socialContextSimilarity: 97, sympathy: 73, socialHierarchy: 60)

        mockParticipantAnalysisService = mock(ParticipantAnalysisService.class)
        when(mockParticipantAnalysisService.getUserSurvey(p1, p2)).thenReturn(survey12)
        when(mockParticipantAnalysisService.getUserSurvey(p1, p3)).thenReturn(survey13)
        when(mockParticipantAnalysisService.getUserSurvey(p2, p1)).thenReturn(survey21)
        when(mockParticipantAnalysisService.getUserSurvey(p2, p3)).thenReturn(survey23)
        when(mockParticipantAnalysisService.getUserSurvey(p3, p1)).thenReturn(survey31)
        when(mockParticipantAnalysisService.getUserSurvey(p3, p2)).thenReturn(survey32)

        personalityAnalysisService = new PersonalityAnalysisService()

        configuration = new SocialContextRecommenderConfiguration()
        configuration.aggregationStrategyType = AggregationStrategyType.AVERAGE
        configuration.approvalVotingApprovalThreshold = 50.0 as Double
        configuration.averageWithoutMiseryMiseryThreshold = 33.33 as Double

        configuration.domainExpertiseIsActive = true
        configuration.socialCapitalIsActive = true
        configuration.tieStrengthIsActive = false
        configuration.socialSimilarityIsActive = false
        configuration.socialContextSimilarityIsActive = false
        configuration.sympathyIsActive = false
        configuration.socialHierarchyIsActive = false

        socialContextRecommenderService = new SocialContextGroupRecommenderService(configuration)
        socialContextRecommenderService.personalityAnalysisService = personalityAnalysisService
        socialContextRecommenderService.participantAnalysisService = mockParticipantAnalysisService
        socialContextRecommenderService.loadActiveSocialContextParameters()
    }

    @Test
    void testGenerateSocialContextRelation() {
        UserSurvey testSurvey = new UserSurvey()
        testSurvey.domainExpertise = 43
        testSurvey.socialCapital = 25
        testSurvey.tieStrength = 89
        testSurvey.socialSimilarity = 75
        testSurvey.socialContextSimilarity = 73
        testSurvey.sympathy = 81
        testSurvey.socialHierarchy = 47

        SocialContextRelation relation = socialContextRecommenderService.generateSocialContextRelation(testSurvey)

        Assert.assertEquals(0.43, relation.domainExpertise, DELTA)
        Assert.assertEquals(0.25, relation.socialCapital, DELTA)
        Assert.assertEquals(0.89, relation.tieStrength, DELTA)
        Assert.assertEquals(0.75, relation.socialSimilarity, DELTA)
        Assert.assertEquals(0.73, relation.socialContextSimilarity, DELTA)
        Assert.assertEquals(0.81, relation.sympathy, DELTA)
        Assert.assertEquals(0.47, relation.socialHierarchy, DELTA)

        testSurvey.socialHierarchy = -100
        testSurvey.sympathy = 200

        relation = socialContextRecommenderService.generateSocialContextRelation(testSurvey)
        Assert.assertEquals(0.0, relation.socialHierarchy, DELTA)
        Assert.assertEquals(1.0, relation.sympathy, DELTA)
    }

    @Test
    void testCalculateAverageSocialContextRelation() {
        SocialContextRelation groupAverage = socialContextRecommenderService.calculateAverageSocialContextRelation(testgroup)
        Assert.assertEquals(0.5333333333333333, groupAverage.domainExpertise, DELTA)
        Assert.assertEquals(0.52, groupAverage.socialCapital, DELTA)
        Assert.assertEquals(0.27666666666666667, groupAverage.tieStrength, DELTA)
        Assert.assertEquals(0.5216666666666666, groupAverage.socialSimilarity, DELTA)
        Assert.assertEquals(0.7033333333333333, groupAverage.socialContextSimilarity, DELTA)
        Assert.assertEquals(0.4583333333333333, groupAverage.sympathy, DELTA)
        Assert.assertEquals(0.7083333333333334, groupAverage.socialHierarchy, DELTA)
    }

    @Test
    void testLoadActiveSocialContextParameters() {
        SocialContextRecommenderConfiguration config = new SocialContextRecommenderConfiguration()
        config.domainExpertiseIsActive = false
        config.socialCapitalIsActive = false
        config.tieStrengthIsActive = false
        config.socialSimilarityIsActive = false
        config.socialContextSimilarityIsActive = false
        config.sympathyIsActive = false
        config.socialHierarchyIsActive = false

        SocialContextGroupRecommenderService service = new SocialContextGroupRecommenderService(config)
        try {
            service.loadActiveSocialContextParameters()
            fail("Not all social context parameters can be null")
        } catch (RuntimeException e) {
        }

    }
    
    @Test
    void testGenerateSocialContextRating() {
        Assert.assertEquals(1.6, personalityAnalysisService.getSocialContextConflictModeWeight(user1.participant), DELTA)
        Assert.assertEquals(0.925, personalityAnalysisService.getSocialContextConflictModeWeight(user2.participant), DELTA)
        Assert.assertEquals(0.925, personalityAnalysisService.getSocialContextConflictModeWeight(user3.participant), DELTA)


        SocialContextRating rating11 = socialContextRecommenderService.generateSocialContextRating(user1, testgroup, r1)
        SocialContextRating rating12 = socialContextRecommenderService.generateSocialContextRating(user1, testgroup, r2)
        SocialContextRating rating13 = socialContextRecommenderService.generateSocialContextRating(user1, testgroup, r3)
        SocialContextRating rating14 = socialContextRecommenderService.generateSocialContextRating(user1, testgroup, r4)
        SocialContextRating rating15 = socialContextRecommenderService.generateSocialContextRating(user1, testgroup, r5)
        SocialContextRating rating16 = socialContextRecommenderService.generateSocialContextRating(user1, testgroup, r6)
        SocialContextRating rating17 = socialContextRecommenderService.generateSocialContextRating(user1, testgroup, r7)
        SocialContextRating rating18 = socialContextRecommenderService.generateSocialContextRating(user1, testgroup, r8)
        SocialContextRating rating19 = socialContextRecommenderService.generateSocialContextRating(user1, testgroup, r9)
        SocialContextRating rating110 = socialContextRecommenderService.generateSocialContextRating(user1, testgroup, r10)

        SocialContextRating rating21 = socialContextRecommenderService.generateSocialContextRating(user2, testgroup, r1)
        SocialContextRating rating22 = socialContextRecommenderService.generateSocialContextRating(user2, testgroup, r2)
        SocialContextRating rating23 = socialContextRecommenderService.generateSocialContextRating(user2, testgroup, r3)
        SocialContextRating rating24 = socialContextRecommenderService.generateSocialContextRating(user2, testgroup, r4)
        SocialContextRating rating25 = socialContextRecommenderService.generateSocialContextRating(user2, testgroup, r5)
        SocialContextRating rating26 = socialContextRecommenderService.generateSocialContextRating(user2, testgroup, r6)
        SocialContextRating rating27 = socialContextRecommenderService.generateSocialContextRating(user2, testgroup, r7)
        SocialContextRating rating28 = socialContextRecommenderService.generateSocialContextRating(user2, testgroup, r8)
        SocialContextRating rating29 = socialContextRecommenderService.generateSocialContextRating(user2, testgroup, r9)
        SocialContextRating rating210 = socialContextRecommenderService.generateSocialContextRating(user2, testgroup, r10)

        SocialContextRating rating31 = socialContextRecommenderService.generateSocialContextRating(user3, testgroup, r1)
        SocialContextRating rating32 = socialContextRecommenderService.generateSocialContextRating(user3, testgroup, r2)
        SocialContextRating rating33 = socialContextRecommenderService.generateSocialContextRating(user3, testgroup, r3)
        SocialContextRating rating34 = socialContextRecommenderService.generateSocialContextRating(user3, testgroup, r4)
        SocialContextRating rating35 = socialContextRecommenderService.generateSocialContextRating(user3, testgroup, r5)
        SocialContextRating rating36 = socialContextRecommenderService.generateSocialContextRating(user3, testgroup, r6)
        SocialContextRating rating37 = socialContextRecommenderService.generateSocialContextRating(user3, testgroup, r7)
        SocialContextRating rating38 = socialContextRecommenderService.generateSocialContextRating(user3, testgroup, r8)
        SocialContextRating rating39 = socialContextRecommenderService.generateSocialContextRating(user3, testgroup, r9)
        SocialContextRating rating310 = socialContextRecommenderService.generateSocialContextRating(user3, testgroup, r10)

        Assert.assertEquals(2.1719437652811737 ,rating11.score, DELTA)
        Assert.assertEquals(4.543581907090465 ,rating12.score, DELTA)
        Assert.assertEquals(3.768520782396088 ,rating13.score, DELTA)
        Assert.assertEquals(4.807640586797065 ,rating14.score, DELTA)
        Assert.assertEquals(4.313753056234718 ,rating15.score, DELTA)
        Assert.assertEquals(4.939669926650367 ,rating16.score, DELTA)
        Assert.assertEquals(3.4066625916870414 ,rating17.score, DELTA)
        Assert.assertEquals(4.675611246943765 ,rating18.score, DELTA)
        Assert.assertEquals(2.5338019559902203 ,rating19.score, DELTA)
        Assert.assertEquals(4.296638141809291 ,rating110.score, DELTA)
        Assert.assertEquals(6.011384976525822 ,rating21.score, DELTA)
        Assert.assertEquals(3.0395539906103286 ,rating22.score, DELTA)
        Assert.assertEquals(2.08650234741784 ,rating23.score, DELTA)
        Assert.assertEquals(4.100586854460094 ,rating24.score, DELTA)
        Assert.assertEquals(5.8001173708920195 ,rating25.score, DELTA)
        Assert.assertEquals(5.2696009389671365 ,rating26.score, DELTA)
        Assert.assertEquals(3.678051643192488 ,rating27.score, DELTA)
        Assert.assertEquals(4.527816901408451 ,rating28.score, DELTA)
        Assert.assertEquals(5.377582159624413 ,rating29.score, DELTA)
        Assert.assertEquals(4.527816901408451 ,rating210.score, DELTA)
        Assert.assertEquals(2.319962216624685 ,rating31.score, DELTA)
        Assert.assertEquals(4.314924433249371 ,rating32.score, DELTA)
        Assert.assertEquals(3.818702770780857 ,rating33.score, DELTA)
        Assert.assertEquals(4.597040302267002 ,rating34.score, DELTA)
        Assert.assertEquals(4.450944584382872 ,rating35.score, DELTA)
        Assert.assertEquals(5.020214105793451 ,rating36.score, DELTA)
        Assert.assertEquals(3.5315491183879093 ,rating37.score, DELTA)
        Assert.assertEquals(4.879156171284635 ,rating38.score, DELTA)
        Assert.assertEquals(3.0302896725440807 ,rating39.score, DELTA)
        Assert.assertEquals(4.523992443324937 ,rating310.score, DELTA)
    }
}
