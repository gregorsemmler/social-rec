package guratorapp.services.personalityanalysis

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.configuration.DelegationBasedRecommenderConfiguration
import guratorapp.configuration.SocialContextRecommenderConfiguration
import guratorapp.model.Participant
import guratorapp.model.ParticipantPersonalityQuestion
import guratorapp.model.Personality
import guratorapp.repositories.ParticipantRepository
import guratorapp.repositories.PersonalityRepository
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service
/**
 * Delivers functions the deal with {@link Personality} entities.
 */
@Service
@CompileStatic
@Slf4j
class PersonalityAnalysisService {
    @Autowired
    SocialContextRecommenderConfiguration socialContextRecommenderConfiguration
    @Autowired
    DelegationBasedRecommenderConfiguration delegationBasedRecommenderConfiguration
    @Autowired
    PersonalityRepository personalityRepository
    @Autowired
    ParticipantRepository participantRepository

    private TKIModeCategorizer modeCategorizer

    PersonalityAnalysisService() {
        modeCategorizer = TKIModeCategorizer.INTERNATIONAL
    }

    /**
     * For a given list of participants, checks if they answered they TKI personality questions. If yes, a
     * {@link Personality} for the participant is created according to the Thomas Kilmann Conflict Mode Instrument
     * and stored in the database.
     * @param participants The list of participants
     */
    public void determineAndSavePersonality(List<Participant> participants) {
        for(Participant p : participants) {
            log.info("Determining personality for participant ${p.name} (${p.id})")

            if(p.personalityTestDone) {
                log.info("User should have answered 30 personality questions")
            } else {
                log.info("User should not have any answered questions")
            }
            if(p == null || p.personalityQuestions.size() < 30) {
                log.info("User answered not enough questions! Skipping this user.")
                continue
            }

            Personality pe = new Personality([competing : 0, cooperating: 0, compromising: 0, avoiding : 0,
                  accommodating: 0, participant : p])

            for(ParticipantPersonalityQuestion q : p.personalityQuestions) {
                updateScore(pe,q.answer,q.personalityQuestion.id)
            }

            log.info("Scoring done, saving personality in database")
            p.personality = pe
            participantRepository.save(p)
            personalityRepository.save(pe)
        }
    }

    /**
     * For a given {@link Personality} object and a answer ("A" or "B") and an id of a question, the scores in the
     * Personality object are updated.
     *
     * The following questions are used:
     1, "I try to find a compromise solution", "I attempt to deal with all of his and my concerns"
     2, "There are times when I let others take responsibility for solving the problem", "Rather than negotiate the things on which we disagree, I try to stress those things upon which we both agree"
     3, "I am usually firm in pursuing my goals", "I might try to soothe the other's feelings and preserve our relationship"
     4, "I try to find a compromise solution", "I sometimes sacrifice my own wishes for the wishes of the other person"
     5, "I feel that the differences are not always worth worrying about", "I make some effort to get my way"
     6, "I am usually firm in pursuing my goals", "I attempt to get all concerns and issues immediately out in the open"
     7, "I try to postpone the issue until I have had some time to think it over", "I give up some points in exchange for others"
     8, "I try to avoid creating unpleasantness for myself", "I try to win my position"
     9, "I consistently seek the other's help in working out a solution", "I try to do what is necessary to avoid useless tensions"
     10, "I attempt to get all concerns and issues immediately out in the open", "I might try to soothe the other's feelings and preserve our relationship"
     11, "I am firm in pursuing my goals", "I try to find a compromise solution"
     12, "I sometimes avoid taking positions which could create controversy", "I will let him have some of his positions if he lets me have some of mine"
     13, "I attempt to immediately work through our differences", "I try to find a fair combination of gains and losses for both of us"
     14, "I attempt to get all concerns and issues immediately out in the open", "I try to postpone the issue until I have had time to think it over"
     15, "If it makes the other person happy, I might let him maintain his views", "I will let him have some of his positions if he lets me have some of mine"
     16, "I am usually firm in pursuing my goals", "I try to do what is necessary to avoid useless tensions"
     17, "I try not to hurt the other's feelings", "I try to convince the other person of the merits of my position"
     18, "I might try and soothe the other's feelings and preserve our relationship", "I try to do what is necessary to avoid tensions"
     19, "I tell him my ideas and ask him for his", "I try to show him the logic and benefits of my position"
     20, "I propose a middle ground", "I press to get my points made"
     21, "I try not to hurt the other's feelings", "I always share the problem with the other person so that we can work it out"
     22, "I propose a middle ground", "I feel that the differences are not always worth worrying about"
     23, "I am usually firm in pursuing my goals", "I usually seek the other's help in working out a solution"
     24, "I sometimes avoid taking positions which could create controversy", "If it makes the other person happy, I might let him maintain his views"
     25, "I propose a middle ground", "I am nearly always concerned with satisfying all our wishes"
     26, "I try to show him the logic and benefits of my position", "In approaching negotiations, I try to be considerate of the other person's wishes"
     27, "If the other's position seems very important to him, I would try to meet his wishes", "I try to get him to settle for a compromise solution"
     28, "I am very often concerned with satisfying all our wishes", "There are times when I let others take responsibility for solving the problem"
     29, "I try to find a position that is intermediate between his and mine", "I assert my wishes"
     30, "In approaching negotiations, I try to be considerate of the other person's wishes", "I always lean toward a direct discussion of the problem")
     *
     * @param personality the personality entity
     * @param questionId the id of the question
     * @param answer the answer given ("A" or "B")
     */
    private void updateScore(Personality personality, String answer, Integer questionId) {
        boolean answerIsA = false

        if(answer.trim().equals("A")) {
            answerIsA = true
        } else if(answer.trim().equals("B")) {
            answerIsA = false
        } else {
            log.error("Invalid answer was given for question with id ${questionId}")
            return
        }

        switch(questionId) {
            case 1:
                if(answerIsA)
                    personality.compromising++
                else
                    personality.cooperating++
                break
            case 2:
                if(answerIsA)
                    personality.avoiding++
                else
                    personality.accommodating++
                break
            case 3:
                if(answerIsA)
                    personality.competing++
                else
                    personality.accommodating++
                break
            case 4:
                if(answerIsA)
                    personality.compromising++
                else
                    personality.accommodating++
                break
            case 5:
                if(answerIsA)
                    personality.avoiding++
                else
                    personality.competing++
                break
            case 6:
                if(answerIsA)
                    personality.competing++
                else
                    personality.cooperating++
                break
            case 7:
                if(answerIsA)
                    personality.avoiding++
                else
                    personality.compromising++
                break
            case 8:
                if(answerIsA)
                    personality.avoiding++
                else
                    personality.competing++
                break
            case 9:
                if(answerIsA)
                    personality.cooperating++
                else
                    personality.avoiding++
                break
            case 10:
                if(answerIsA)
                    personality.cooperating++
                else
                    personality.accommodating++
                break
            case 11:
                if(answerIsA)
                    personality.competing++
                else
                    personality.compromising++
                break
            case 12:
                if(answerIsA)
                    personality.avoiding++
                else
                    personality.compromising++
                break
            case 13:
                if(answerIsA)
                    personality.cooperating++
                else
                    personality.compromising++
                break
            case 14:
                if(answerIsA)
                    personality.cooperating++
                else
                    personality.avoiding++
                break
            case 15:
                if(answerIsA)
                    personality.accommodating++
                else
                    personality.compromising++
                break
            case 16:
                if(answerIsA)
                    personality.competing++
                else
                    personality.avoiding++
                break
            case 17:
                if(answerIsA)
                    personality.accommodating++
                else
                    personality.competing++
                break
            case 18:
                if(answerIsA)
                    personality.accommodating++
                else
                    personality.avoiding++
                break
            case 19:
                if(answerIsA)
                    personality.cooperating++
                else
                    personality.competing++
                break
            case 20:
                if(answerIsA)
                    personality.compromising++
                else
                    personality.competing++
                break
            case 21:
                if(answerIsA)
                    personality.accommodating++
                else
                    personality.cooperating++
                break
            case 22:
                if(answerIsA)
                    personality.compromising++
                else
                    personality.avoiding++
                break
            case 23:
                if(answerIsA)
                    personality.competing++
                else
                    personality.cooperating++
                break
            case 24:
                if(answerIsA)
                    personality.avoiding++
                else
                    personality.accommodating++
                break
            case 25:
                if(answerIsA)
                    personality.compromising++
                else
                    personality.cooperating++
                break
            case 26:
                if(answerIsA)
                    personality.competing++
                else
                    personality.accommodating++
                break
            case 27:
                if(answerIsA)
                    personality.accommodating++
                else
                    personality.compromising++
                break
            case 28:
                if(answerIsA)
                    personality.cooperating++
                else
                    personality.avoiding++
                break
            case 29:
                if(answerIsA)
                    personality.compromising++
                else
                    personality.competing++
                break
            case 30:
                if(answerIsA)
                    personality.accommodating++
                else
                    personality.cooperating++
                break
            default:
                log.error("Invalid questionId ${questionId}")
                return
        }
    }

    /**
     * Calculates the Conflict Mode Weight from a given {@link Personality} . Its value should be between 0 and 1, where
     * a smaller value indicates an easygoing personality, a higher value a stronger personality. The calculation is based
     * on the following :
     *
     * Quijano-Sanchez, Lara; Recio-Garcia, Juan A.; Diaz-Agudo, Belen; Jimenez-Diaz, Guillermo (2013): Social Factors
     * in Group Recommender Systems. In: ACM Trans. Intell. Syst. Technol. 4 (1), 8:1‐8:30. DOI: 10.1145/2414425.2414433.
     *
     * Recio-Garcia, Juan A.; Jimenez-Diaz, Guillermo; Sanchez-Ruiz, Antonio A.; Diaz-Agudo, Belen (2009): Personality
     * Aware Recommendations to Groups. In: Proceedings of the Third ACM Conference on Recommender Systems. New York,
     * NY, USA: ACM (RecSys ’09), S. 325–328. Online http://doi.acm.org/10.1145/1639714.1639779.
     *
     * @param personality the personality object
     * @return the resulting conflictModeWeight as a double value
     */
    public double computeConflictModeWeight(Personality personality) {
        double assertiveness = 0.0
        double cooperativeness = 0.0

        if(modeCategorizer.hasHighCompeting(personality)) {
            assertiveness += 0.375
            cooperativeness -= 0.15
        } else if(modeCategorizer.hasLowCompeting(personality)){
            assertiveness -= 0.075
        }

        if(modeCategorizer.hasHighCollaborating(personality)) {
            assertiveness += 0.375
            cooperativeness += 0.375
        } else if(modeCategorizer.hasLowCollaborating(personality)) {
            assertiveness -= 0.075
            cooperativeness -= 0.075
        }

        //The compromising value doesn't influence the Conflict Mode Weight

        if(modeCategorizer.hasHighAvoiding(personality)) {
            assertiveness -= 0.375
            cooperativeness -= 0.375
        } else if(modeCategorizer.hasLowAvoiding(personality)) {
            assertiveness += 0.075
            cooperativeness += 0.075
        }
        if(modeCategorizer.hasHighAccommodating(personality)) {
            assertiveness -= 0.15
            cooperativeness += 0.375
        } else if(modeCategorizer.hasLowAccommodating(personality)) {
            cooperativeness -= 0.075
        }

        return (1.0 + assertiveness - cooperativeness)
    }

    /**
     * Calculates the ConflictModeWeight for a given Participant, or the default value
     * from the {@link DelegationBasedRecommenderConfiguration} if none is found.
     * @param participant the participant in question
     * @return the resulting conflictModeWeight
     */
    double getDelegationBasedConflictModeWeight(Participant participant) {

        if(participant.personality == null) {
            return delegationBasedRecommenderConfiguration.defaultConflictModeWeight
        }

        return computeConflictModeWeight(participant.personality)
    }

    /**
     * Calculates the ConflictModeWeight for a given Participant, or the default value
     * from the {@link SocialContextRecommenderConfiguration} if none is found.
     * @param participant the participant in question
     * @return the resulting conflictModeWeight
     */
    double getSocialContextConflictModeWeight(Participant participant) {
        if(participant.personality == null) {
            return socialContextRecommenderConfiguration.defaultConflictModeWeight
        }

        return computeConflictModeWeight(participant.personality)
    }


}
