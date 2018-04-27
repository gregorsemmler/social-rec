package guratorapp.services.grouprecommendation

import com.sun.javaws.exceptions.InvalidArgumentException
import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.configuration.RecommenderConfiguration
import guratorapp.configuration.SocialContextRecommenderConfiguration
import guratorapp.model.GuratorGroup
import guratorapp.model.Participant
import guratorapp.model.UserSurvey
import guratorapp.recommendation.model.*
import guratorapp.services.UserService
import guratorapp.services.ParticipantAnalysisService
import guratorapp.services.personalityanalysis.PersonalityAnalysisService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.beans.factory.annotation.Qualifier
import org.springframework.stereotype.Service

import javax.annotation.PostConstruct
/**
 * Calculates recommendations for a collection of {@link RecommendationGroup} while incorporating social context factors.
 */
@CompileStatic
@Slf4j
@Service
class SocialContextGroupRecommenderService extends GroupRecommenderService {

    @Autowired
    PersonalityAnalysisService personalityAnalysisService

    @Autowired
    ParticipantAnalysisService participantAnalysisService

    private SocialContextRelation defaultSocialContextRelation
    private SocialContextRelation currentAverageSocialContextRelation

    @Autowired
    SocialContextGroupRecommenderService(@Qualifier("SocialContextRecommenderConfiguration") RecommenderConfiguration configuration) {
        super(configuration, RecommenderType.SOCIAL_CONTEXT)
    }

    SocialContextRecommenderConfiguration getSocialContextRecommenderConfiguration() {
        return configuration as SocialContextRecommenderConfiguration
    }

    @PostConstruct
    void initialize() {
        loadActiveSocialContextParameters()
        initializeDefaultSocialContextRelation()
    }

    /**
     * Initializes the default SocialContextRelation
     */
    void initializeDefaultSocialContextRelation() {
        SocialContextRecommenderConfiguration config = getSocialContextRecommenderConfiguration()
        defaultSocialContextRelation = generateSocialContextRelation(config.defaultDomainExpertise,
                config.defaultSocialCapital, config.defaultTieStrength, config.defaultSocialSimilarity,
                config.defaultSocialContextSimilarity, config.defaultSympathy, config.defaultSocialHierarchy)
    }

    /**
     * Loads information about which social context parameters should be used in the recommendation
     */
    void loadActiveSocialContextParameters() {
        SocialContextRecommenderConfiguration config = getSocialContextRecommenderConfiguration()

        socialContextParameterActive[0] = config.domainExpertiseIsActive
        socialContextParameterActive[1] = config.socialCapitalIsActive
        socialContextParameterActive[2] = config.tieStrengthIsActive
        socialContextParameterActive[3] = config.socialSimilarityIsActive
        socialContextParameterActive[4] = config.socialContextSimilarityIsActive
        socialContextParameterActive[5] = config.sympathyIsActive
        socialContextParameterActive[6] = config.socialHierarchyIsActive

        for(int i=0; i<socialContextParameterActive.length; ++i) {
            if(socialContextParameterActive[i])
                return
        }
        throw new RuntimeException("At least one social context parameter has to be active")
    }

    //indicates if a specific socialContext parameter should be used in the recommendation process
    private boolean[] socialContextParameterActive = new boolean[7]

    @Override
    RecommendationGroup preTransformGroup(RecommendationGroup recommendationGroup, Collection<Restaurant> restaurants, RestaurantRatingType ratingType) {

        SocialContextRecommenderConfiguration config = getSocialContextRecommenderConfiguration()
        if(config.useSocialContextGroupAverageAsDefault) {
            currentAverageSocialContextRelation = calculateAverageSocialContextRelation(recommendationGroup)
        }

        GuratorGroup guratorGroup = recommendationGroup.group
        RecommendationGroup newGroup = new RecommendationGroup(id : recommendationGroup.id, group: guratorGroup)

        for(Participant participant : guratorGroup.participants) {
            User oldUser = UserService.getUser(participant.id as Long)
            if(oldUser == null) {
                throw new RuntimeException("No user found for participant with id ${participant.id}")
            }
            User newUser = new User(id : oldUser.id, participant: oldUser.participant)

            for(Restaurant restaurant : restaurants) {
                SocialContextRating socialContextRating = generateSocialContextRating(oldUser, recommendationGroup, restaurant)
                newUser.addRating(restaurant, socialContextRating.score, ratingType)
            }

            newGroup.addUser(newUser)
        }

        return newGroup
    }

    SocialContextRating generateSocialContextRating(User user, RecommendationGroup group, Restaurant restaurant) {
        Collection<User> users = group.getUsers()
        if(users.size() < 2) {
            throw new InvalidArgumentException("Group must have at least two members")
        }
        if(! users.contains(user)) {
            throw new InvalidArgumentException("User is not member of the group")
        }
        int numSocialContextParams = socialContextParameterActive.length

        SocialContextRecommenderConfiguration config = getSocialContextRecommenderConfiguration()

        //Assume that the default value of a social context parameter to the user itself is 1.0
        double totalSocialContextSum = 0.0
        for(int i=0; i < numSocialContextParams; ++i) {
            if(socialContextParameterActive[i])
                totalSocialContextSum += 1.0
        }

        double result = 0.0
        Participant from = user.participant

        for(User otherUser : users) {
            if(user == otherUser) {
                continue
            }
            Participant to = otherUser.participant
            RestaurantRating rating = restaurant.getRatingFrom(otherUser)

            double otherPersonality = personalityAnalysisService.getSocialContextConflictModeWeight(to)
            double socialContextSum = 0.0

            UserSurvey userSurvey = participantAnalysisService.getUserSurvey(from, to)
            SocialContextRelation userRelation
            if(userSurvey == null) {
                if(config.useSocialContextGroupAverageAsDefault) {
                    userRelation = currentAverageSocialContextRelation
                } else {
                    userRelation = defaultSocialContextRelation
                }
            } else {
                userRelation = generateSocialContextRelation(userSurvey)
            }

            if(socialContextParameterActive[0]) {
                double domainExpertise = userRelation.domainExpertise
                totalSocialContextSum += domainExpertise
                socialContextSum += domainExpertise
            }
            if(socialContextParameterActive[1]) {
                double socialCapital = userRelation.socialCapital
                totalSocialContextSum += socialCapital
                socialContextSum += socialCapital
            }
            if(socialContextParameterActive[2]) {
                double tieStrength = userRelation.tieStrength
                totalSocialContextSum += tieStrength
                socialContextSum += tieStrength
            }

            if(socialContextParameterActive[3]) {
                double socialSimilarity = userRelation.socialSimilarity
                totalSocialContextSum += socialSimilarity
                socialContextSum += socialSimilarity
            }

            if(socialContextParameterActive[4]) {
                double socialContextSimilarity = userRelation.socialContextSimilarity
                totalSocialContextSum += socialContextSimilarity
                socialContextSum += socialContextSimilarity
            }

            if(socialContextParameterActive[5]) {
                double sympathy = userRelation.sympathy
                totalSocialContextSum += sympathy
                socialContextSum += sympathy
            }

            if(socialContextParameterActive[6]) {
                double socialHierarchy = userRelation.socialHierarchy
                totalSocialContextSum += socialHierarchy
                socialContextSum += socialHierarchy
            }

            double personalityModifiedScore = rating.score + otherPersonality
            result += (socialContextSum * personalityModifiedScore)
        }

        result /= totalSocialContextSum

        return new SocialContextRating(user, group, restaurant, result)
    }

    /**
     * Generates a new {@link SocialContextRelation} from a given {@link UserSurvey}, by normalizing the parameters
     * to the range specified in the configuration.
     * @param userSurvey the input userSurvey
     * @return the resulting {@link SocialContextRelation}
     */
    SocialContextRelation generateSocialContextRelation(UserSurvey userSurvey) {
        return generateSocialContextRelation(userSurvey.domainExpertise as double, userSurvey.socialCapital as double,
                userSurvey.tieStrength as double, userSurvey.socialSimilarity as double, userSurvey.socialContextSimilarity as double,
                userSurvey.sympathy as double, userSurvey.socialHierarchy as double)
    }

    /**
     * Generates a new {@link SocialContextRelation} from given social context parameters to the range specified in
     * the configuration.
     * @param domainExpertise the domain expertise
     * @param socialCapital the social capital
     * @param tieStrength the tie strength
     * @param socialSimilarity the social similarity
     * @param socialContextSimilarity the social context similarity
     * @param sympathy the sympathy
     * @param socialHierarchy the social hierarchy
     * @return the resulting {@link SocialContextRelation}
     */
    SocialContextRelation generateSocialContextRelation(double domainExpertise, double socialCapital, double tieStrength,
                    double socialSimilarity, double socialContextSimilarity, double sympathy, double socialHierarchy) {
        SocialContextRelation result = new SocialContextRelation()

        result.domainExpertise = normalizeSocialContextParameter(domainExpertise)
        result.socialCapital = normalizeSocialContextParameter(socialCapital)
        result.tieStrength = normalizeSocialContextParameter(tieStrength)
        result.socialSimilarity = normalizeSocialContextParameter(socialSimilarity)
        result.socialContextSimilarity = normalizeSocialContextParameter(socialContextSimilarity)
        result.sympathy = normalizeSocialContextParameter(sympathy)
        result.socialHierarchy = normalizeSocialContextParameter(socialHierarchy)

        return result
    }

    /**
     * Calculates the average {@link SocialContextRelation} of all the {@link UserSurvey} of group members between each other.
     * If no group member has a userSurvey to any other member, the default values from the configuration are chosen
     * @param group the recommendationGroup
     * @return the resulting {@link SocialContextRelation} with the group-specific averages
     */
    SocialContextRelation calculateAverageSocialContextRelation(RecommendationGroup group) {
        Collection<User> users = group.getUsers()
        if(users.size() < 2) {
            throw new InvalidArgumentException("Group must have at least two members")
        }

        double averageDomainExpertise = 0.0
        double averageSocialCapital = 0.0
        double averageTieStrength = 0.0
        double averageSocialSimilarity = 0.0
        double averageSocialContextSimilarity = 0.0
        double averageSympathy = 0.0
        double averageSocialHierarchy = 0.0

        int numUserSurveys = 0

        for(User fromUser : users) {
            Participant from = fromUser.participant

            for(User toUser : users) {
                if(fromUser == toUser) {
                    continue
                }
                Participant to = toUser.participant

                UserSurvey userSurvey = participantAnalysisService.getUserSurvey(from, to)

                if(userSurvey == null) {
                    continue
                }

                ++numUserSurveys

                SocialContextRelation relation = generateSocialContextRelation(userSurvey)
                averageDomainExpertise += relation.domainExpertise
                averageSocialCapital += relation.socialCapital
                averageTieStrength += relation.tieStrength
                averageSocialSimilarity += relation.socialSimilarity
                averageSocialContextSimilarity += relation.socialContextSimilarity
                averageSympathy += relation.sympathy
                averageSocialHierarchy += relation.socialHierarchy
            }
        }

        if(numUserSurveys == 0) {
            log.warn("No usersurveys present in group. Using default value")
            return defaultSocialContextRelation
        }

        averageDomainExpertise /= numUserSurveys
        averageSocialCapital /= numUserSurveys
        averageTieStrength /= numUserSurveys
        averageSocialSimilarity /= numUserSurveys
        averageSocialContextSimilarity /= numUserSurveys
        averageSympathy /= numUserSurveys
        averageSocialHierarchy /= numUserSurveys

        return new SocialContextRelation(domainExpertise: averageDomainExpertise, socialCapital: averageSocialCapital, tieStrength: averageTieStrength,
                socialSimilarity: averageSocialSimilarity, socialContextSimilarity: averageSocialContextSimilarity, sympathy: averageSympathy,
                socialHierarchy: averageSocialHierarchy)
    }

    /**
     * Normalizes the input parameter to be in 0.0 to 1.0 range
     * @param input the input social context parameter value
     * @return the normalized value
     */
    double normalizeSocialContextParameter(double input) {
        return Math.min(1.0, (Math.max(0.0 , (input - SocialContextRecommenderConfiguration.MINIMUM_SOCIAL_CONTEXT_SCORE) /
                SocialContextRecommenderConfiguration.MAXIMUM_SOCIAL_CONTEXT_SCORE)))
    }



}
