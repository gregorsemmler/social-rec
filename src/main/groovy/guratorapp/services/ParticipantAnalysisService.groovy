package guratorapp.services

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.configuration.DelegationBasedRecommenderConfiguration
import guratorapp.configuration.SocialContextRecommenderConfiguration
import guratorapp.model.Participant
import guratorapp.model.UserSurvey
import guratorapp.repositories.ParticipantRepository
import guratorapp.repositories.UserSurveyRepository
import guratorapp.services.personalityanalysis.PersonalityAnalysisService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service
/**
 * Delivers functionality to analyse {@link Participant}
 */
@CompileStatic
@Service
@Slf4j
class ParticipantAnalysisService {
    @Autowired
    DelegationBasedRecommenderConfiguration delegationRecommenderConfiguration
    @Autowired
    SocialContextRecommenderConfiguration socialContextRecommenderConfiguration

    @Autowired
    ParticipantRepository participantRepository
    @Autowired
    UserSurveyRepository userSurveyRepository
    @Autowired
    PersonalityAnalysisService personalityAnalysisService

    /**
     * Marks all participants as internal and external and stores them in the database.
     */
    void markAllParticipantsInternalAndExternal() {
        List<Participant> participants = participantRepository.findAll()
        markInternalAndExternals(participants)
    }

    /**
     * Given a list of {@link Participant} determines if they are {@see isInternal} and stores the value
     * in the database.
     * @param participants a list of participants
     */
    void markInternalAndExternals(List<Participant> participants) {
        for(Participant participant : participants) {
            participant.isInternal = isInternal(participant)
            participantRepository.save(participant)
        }
    }

    /**
     * For a given {@link Participant} determines if it is an internal Participant or not
     * @param participant the participant in question
     * @return true or false
     */
    boolean isInternal(Participant participant) {

        String matriculationNumber = participant.matriculationNumber
        if(matriculationNumber == null || matriculationNumber.isAllWhitespace()) {
            return false
        }
        return true
    }

    /**
     * Returns a list of all UserSurveys from a {@link Participant} to another
     * @param fromParticipant the participant from which the survey was created
     * @param toParticipant the participant the survey is targeted to
     * @return a list of all the Surveys for other Participants
     */
    UserSurvey getUserSurvey(Participant fromParticipant, Participant toParticipant) {
        return userSurveyRepository.findByFromParticipantAndToParticipant(fromParticipant, toParticipant)
    }



    /**
     * Determines the trust one Participant has for another. Here in this context domainExpertise is equivalent
     * with a trust value. Always returns a non-negative value.
     * @param fromParticipant the participant who trusts another to some degree
     * @param toParticipant the participant who is trusted to some degree
     * @return the trust value
     */
    double getTrust(Participant fromParticipant, Participant toParticipant) {
        UserSurvey survey = getUserSurvey(fromParticipant, toParticipant)
        double result

        if(survey == null) {
            result = delegationRecommenderConfiguration.defaultTrust
        } else {
            result = survey.domainExpertise as double
        }

        return Math.max(0.0 ,
                (result - DelegationBasedRecommenderConfiguration.MINIMUM_SOCIAL_CONTEXT_SCORE) /
                        DelegationBasedRecommenderConfiguration.MAXIMUM_SOCIAL_CONTEXT_SCORE)
    }

}
