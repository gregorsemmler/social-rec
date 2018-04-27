package guratorapp.services

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.model.*
import guratorapp.model.ratings.CombinedRating
import guratorapp.model.ratings.GeneratedRating
import guratorapp.recommendation.model.*
import guratorapp.repositories.*
import guratorapp.repositories.ratings.AverageRatingRepository
import guratorapp.repositories.ratings.CombinedRatingRepository
import guratorapp.repositories.ratings.GeneratedRatingRepository
import guratorapp.services.individualrecommendation.IndividualRecommenderService
import guratorapp.services.personalityanalysis.PersonalityAnalysisService
import org.grouplens.lenskit.vectors.SparseVector
import org.grouplens.lenskit.vectors.VectorEntry
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

import java.time.ZonedDateTime
/**
 * Analysis functionality for {@link GuratorGroup}
 */
@CompileStatic
@Slf4j
@Service
class GroupAnalysisService {
    @Autowired
    GroupRepository groupRepository

    @Autowired
    RestaurantService restaurantService
    @Autowired
    UserService userService
    @Autowired
    IndividualRecommenderService individualRecommenderService
    @Autowired
    PersonalityAnalysisService personalityAnalysisService

    @Autowired
    GroupTypeRepository groupTypeRepository
    @Autowired
    UserSurveyRepository userSurveyRepository

    @Autowired
    GroupRestaurantSurveyRepository groupRestaurantSurveyRepository
    @Autowired
    RestaurantSurveyRepository restaurantSurveyRepository

    @Autowired
    CombinedRatingRepository combinedRatingRepository
    @Autowired
    GeneratedRatingRepository generatedRatingRepository

    @Autowired
    AverageRatingRepository restaurantAverageRatingRepository
    @Autowired
    ParticipantRepository participantRepository

    @Autowired
    GroupMembershipRepository groupMembershipRepository

    /**
     * Regenerates all missing ratings for all individuals and recombines them to new ratings in the form of
     * {@link CombinedRating}. Warning: This is process is computationally expensive.
     */
    void rebuildCombinedRatings() {
        regenerateAllMissingRatings()
        combineAndSaveAllRatingsForAllParticipants()
    }

    /**
     * Retrieves all standard (not generated) groups from the database
     * @return a collection of the groups in question
     */
    Collection<GuratorGroup> getAllStandardGroups() {
        ArrayList<GuratorGroup> result = new ArrayList<GuratorGroup>()

        for(GroupType groupType: GroupType.standardTypes()) {
            result.addAll(groupRepository.findByGroupType(groupType))
        }
        return result
    }

    /**
     * Combines all ratings for all {@link Participant} and all {@link RestaurantRatingType}. All previously stored
     * combined ratings are deleted.
     */
    void combineAndSaveAllRatingsForAllParticipants() {
        log.warn("Deleting all combined ratings from the database")
        combinedRatingRepository.deleteAll()

        log.info("Retrieving all participants from database")
        List<Participant> participants = participantRepository.findAll()

        for(RestaurantRatingType restaurantRatingType : RestaurantRatingType.values()) {
            log.info("Combining and saving values for rating type ${restaurantRatingType}")

            combinedRatingRepository.save(combineRatings(participants, restaurantRatingType))
        }
        log.info("Finished combining and saving ratings")
    }

    /**
     * Generates all missing ratings for all {@link GuratorGroup}s in the database and stores them in the database.
     * All previously stored generated Ratings are deleted.
     */
    void regenerateAllMissingRatings() {
        Collection<GuratorGroup> groups = getAllStandardGroups()
        regenerateAllMissingRatings(groups)
    }

    /**
     * Generates all missing ratings for a collection of supplied {@link GuratorGroup} and stores them in the database.
     * All previously stored generated Ratings are deleted.
     * @param groups the groups for which the ratings of the members should be created.
     */
    void regenerateAllMissingRatings(Collection<GuratorGroup> groups) {
        log.warn("Deleting all generated ratings from database")
        generatedRatingRepository.deleteAll()

        for(RestaurantRatingType restaurantRatingType : RestaurantRatingType.values()) {
            log.info("Generating and saving values for rating type ${restaurantRatingType}")

            generatedRatingRepository.save(generateMissingRatings(restaurantRatingType, groups))
        }

        log.info("Finished generating missing ratings")
    }

    /**
     * Determines for a given List of groups their GroupTypes and updates it in the database
     * @param groups the List of groups
     */
    void determineAndSaveGroupType(List<GuratorGroup> groups) {
        for(GuratorGroup g : groups) {
            g.groupType = determineGroupType(g)
            groupRepository.save(g)
        }
    }

    //TODO refactor
    GroupType getGroupTypeFromId(String groupTypeId) {
        GroupType groupType = groupTypeRepository.findById(groupTypeId)

        if(groupType == null) {
            throw new IllegalArgumentException("No groupType of Id ${groupTypeId} found")
        }

        return groupType
    }

    /**
     * Determines the {@link GroupType} of a given {@link GuratorGroup}
     * @param group the Group in question
     * @return the type of the Group in question
     */
    GroupType determineGroupType(GuratorGroup group) {
        List<Participant> members = group.participants

        int numExternals = 0
        int numInternals = 0
        for(Participant participant : members) {
            if(participant.isInternal) {
                numInternals++
            } else {
                numExternals++
            }
        }
        if(numInternals == members.size()) {
            return GroupType.INTERNAL_GROUP
        } else if(numInternals == 1 && numInternals < members.size()) {
            return GroupType.EXTERNAL_GROUP
        } else if(numInternals == 0) {
            log.warn("Found Group with no internal members! id: ${group.id}")
            return GroupType.EXTERNAL_GROUP
        }
        return GroupType.MIXED_GROUP
    }

    public GuratorGroup getGroupFromId(Integer id) {
        GuratorGroup result = groupRepository.findById(id)
        if(result == null) {
            throw new IllegalArgumentException("Could not find group for id ${id}")
        }
        return result
    }

    public Collection<UserRestaurantPair> findMissingIndividualSurveysByGroupType(GroupType groupType) {

        List<GuratorGroup> groups = groupRepository.findByGroupType(groupType)

        return findMissingIndividualSurveys(groups)
    }

    public HashMap<User, Collection<Long>> findMissingIndividualSurveysPerUserByGroupType(GroupType groupType) {

        List<GuratorGroup> groups = groupRepository.findByGroupType(groupType)

        return findMissingIndividualSurveysPerUser(groups)
    }

    Map<User, Collection<Restaurant>> getRestaurantsPerUser(Collection<UserRestaurantPair> userRestaurantPairs) {
        HashMap<User, Collection<Restaurant>> result = new HashMap<>()

        for(UserRestaurantPair pair : userRestaurantPairs) {
            if(result[pair.user] == null) {
                result[pair.user] = new ArrayList<Restaurant>()
            }

            result[pair.user].add(pair.restaurant)
        }

        return result
    }

    /**
     * Checks for all groups if for every {@link GroupRestaurantSurvey} there exist {@link RestaurantSurvey} for each
     * group member. If not, warnings are logged to the console
     */
    Collection<UserRestaurantPair> findMissingIndividualSurveysForAllGroups() {
        log.info("Retrieving all groups")
        Collection<GuratorGroup> groups = getAllStandardGroups()

        return findMissingIndividualSurveys(groups)
    }

    Collection<UserRestaurantPair> findMissingIndividualSurveys(Collection<GuratorGroup> groups) {
        HashMap<User, Collection<Long>> perUser = findMissingIndividualSurveysPerUser(groups)

        ArrayList<UserRestaurantPair> result = new ArrayList<>()
        for(User user : perUser.keySet()) {
            for(Long id : perUser[user]) {
                result.add(new UserRestaurantPair([user: user, restaurant: restaurantService.getRestaurant(id)]))
            }
        }
        return result
    }

    /**
     * Determines the number of missing ratings for all standard (not-generated) groups in the database
     */
    void determineNumberOfUsersWithMissingRatings() {
        Collection<GuratorGroup> groups = getAllStandardGroups()
        determineNumberOfUsersWithMissingRatings(groups)
    }

    /**
     * For a given collection of {@link GuratorGroup}, determines the number of Participants with missing {@link RestaurantSurvey}s
     * @param groups The Collection of Groups
     */
    void determineNumberOfUsersWithMissingRatings(Collection<GuratorGroup> groups) {
        int numCompleteGroups = 0
        int numGroupsAllMembersIncomplete = 0
        double averageNumberOfMissingPerUser = 0.0
        int numCasesOfMissingRatings = 0
        int numberOfGroupsWithNotEnoughGroupSurveys = 0

        for(GuratorGroup group : groups) {
            HashMap<User, Collection<Long>> missingSurveys = findMissingIndividualSurveysPerUser([ group ])

            int numMissing = missingSurveys.keySet().size()
            int numGroupSurveys = group.restaurantSurveys.size()

            if(numGroupSurveys < 15) {
                numberOfGroupsWithNotEnoughGroupSurveys++
            }

            log.info("${group} : ${numMissing} of ${group.getParticipants().size()} participants have incomplete surveys")
            if(numMissing == 0) {
                numCompleteGroups++
            } else if (numMissing == group.getParticipants().size()) {
                numGroupsAllMembersIncomplete++
            }
            for(User user : missingSurveys.keySet()) {
                log.info("\t${user} misses ${missingSurveys[user].size()} of ${numGroupSurveys}")
                numCasesOfMissingRatings ++
                averageNumberOfMissingPerUser += missingSurveys[user].size() as double
            }
        }
        averageNumberOfMissingPerUser /= numCasesOfMissingRatings
        log.info("Total number of groups: ${groups.size()}")
        log.info("Number of complete groups: ${numCompleteGroups}")
        log.info("Number of groups where every member misses surveys: ${numGroupsAllMembersIncomplete}")
        log.info("Average number of missing ratings per user over all ratings ${averageNumberOfMissingPerUser}")
        log.info("Number of groups missing group surveys ${numberOfGroupsWithNotEnoughGroupSurveys}")
        log.info("Finished Analysis")
    }

    /**
     * For all standard {@link GuratorGroup} in the database, analyses the cases of group members not having all {@link UserSurvey}s
     * between each other
     */
    void determineMissingUserSurveys() {
        Collection<GuratorGroup> standardGroups = getAllStandardGroups()
        determineMissingUserSurveys(standardGroups)
    }

    /**
     * For a given set of {@link GuratorGroup}, analyses the cases of group members not having all {@link UserSurvey}s
     * between each other
     * @param groups The Collection of Groups
     */
    void determineMissingUserSurveys(Collection<GuratorGroup> groups) {
        int totalNumberOfActuallyExistingConnections = 0
        int totalNumberOfRequiredConnections = 0
        double missingOnAveragePerUser = 0.0

        HashMap<Integer, HashMap<Integer, Boolean>> connections = new HashMap<>()

        for(GuratorGroup group : groups) {
            log.info("Group ${group} with ${group.participants.size()} participants")

            for(Participant from : group.participants) {
                int missingforCurrentUser = 0
                HashMap<Integer, Boolean> currentMap

                if(connections[from.id] == null) {
                    connections[from.id] = new HashMap<>()
                }
                currentMap = connections[from.id]

                for(Participant to : group.participants) {
                    if(to == from) {
                        continue
                    }

                    if(currentMap[to.id] == null) {
                        totalNumberOfRequiredConnections++
                        currentMap[to.id] = true
                    }

                    if(userSurveyRepository.findByFromParticipantAndToParticipant(from,to) == null) {
                        missingforCurrentUser++
                    } else {
                        totalNumberOfActuallyExistingConnections++
                    }
                }

                log.info("${from} misses ${missingforCurrentUser} of ${group.participants.size() - 1} surveys")
                missingOnAveragePerUser += missingforCurrentUser as double
            }
        }
        missingOnAveragePerUser /= connections.keySet().size() as double

        log.info("Total Number of required connections between all group members ${totalNumberOfRequiredConnections}")
        log.info("Total Number of actually existing connections ${totalNumberOfActuallyExistingConnections}")
        log.info("Missing per user on average ${missingOnAveragePerUser}")
    }

    /**
     * Analyses and logs, average sizes, minimal sizes and maximal sizes of different group types
     */
    void analyseGroupSizesAndSurveys() {
        log.info("All standard Groups:")
        analyseGroupSizesAndSurveys(getAllStandardGroups())
        log.info("Internal Groups:")
        analyseGroupSizesAndSurveys(getAllGroupsWithType(GroupType.INTERNAL_GROUP))
        log.info("External Groups:")
        analyseGroupSizesAndSurveys(getAllGroupsWithType(GroupType.EXTERNAL_GROUP))
        log.info("Mixed Groups:")
        analyseGroupSizesAndSurveys(getAllGroupsWithType(GroupType.MIXED_GROUP))
        log.info("Finished analysis")
    }

    /**
     * Analyse the group sizes of the supplied collection of groups
     * @param groups the collection of {@link GuratorGroup}
     */
    void analyseGroupSizesAndSurveys(Collection<GuratorGroup> groups) {
        double averageSize = 0.0
        double averageNumberSurveys = 0.0
        int minimalSize = Integer.MAX_VALUE
        int maximalSize = Integer.MIN_VALUE
        int minNumberSurveys = Integer.MAX_VALUE
        int maxNumberSurveys = Integer.MIN_VALUE

        int numGroups = groups.size()

        for(GuratorGroup group : groups) {
            int currentSize = group.participants.size()
            int numSurveys = group.restaurantSurveys.size()
            averageSize += currentSize
            averageNumberSurveys += numSurveys

            if(currentSize < minimalSize)
                minimalSize = currentSize

            if(currentSize > maximalSize)
                maximalSize = currentSize

            if(numSurveys < minNumberSurveys)
                minNumberSurveys = numSurveys

            if(numSurveys > maxNumberSurveys)
                maxNumberSurveys = numSurveys
        }
        averageSize /= numGroups as double
        averageNumberSurveys /= numGroups as double

        log.info("Number of groups ${numGroups}")
        log.info("Average size ${averageSize}")
        log.info("Minimal size ${minimalSize}")
        log.info("Maximal size ${maximalSize}")
        log.info("Average number of Surveys ${averageNumberSurveys}")
        log.info("Minimal number of Surveys ${minNumberSurveys}")
        log.info("Maximal number of Surveys ${maxNumberSurveys}")
    }

    /**
     * Analysis of the conflict mode weights of group members of groups of a specific type
     */
    void analyseConflictModeWeight() {
        log.info("All standard Groups:")
        log.info("=======================================================")
        analyseConflictModeWeight(getAllStandardGroups())
        log.info("Internal Groups:")
        log.info("=======================================================")
        analyseConflictModeWeight(getAllGroupsWithType(GroupType.INTERNAL_GROUP))
        log.info("External Groups:")
        log.info("=======================================================")
        analyseConflictModeWeight(getAllGroupsWithType(GroupType.EXTERNAL_GROUP))
        log.info("Mixed Groups:")
        log.info("=======================================================")
        analyseConflictModeWeight(getAllGroupsWithType(GroupType.MIXED_GROUP))
        log.info("Finished analysis")
    }

    /**
     * Analysis of the conflict mode weights of group members of groups of a specific type
     * @param groups the groups to be considered
     */
    void analyseConflictModeWeight(Collection<GuratorGroup> groups) {
        int totalNumberUsers = 0
        int numberOfUsersWithPersonality = 0
        double overallAvgCmw = 0.0
        double groupAvgCmwAverage = 0.0
        double avgGroupSize = 0.0

        HashMap<Integer, Boolean> alreadySeenParticipants = new HashMap<>()

        for(GuratorGroup group : groups) {
            int groupSize = group.participants.size()

            log.info("${group} with ${groupSize} participants")
            avgGroupSize += groupSize as double

            if(groupSize == 0)
                continue

            double groupAvgCmw = 0.0
            int numInGroupWithCmw = 0

            for(Participant p : group.participants) {

                boolean seenBefore = true
                if(alreadySeenParticipants[p.id] == null) {
                    alreadySeenParticipants[p.id] = true
                    seenBefore = false

                    totalNumberUsers++
                    if(p.personality != null) {
                        numberOfUsersWithPersonality++
                    }
                }

                if(p.personality == null) {
                    continue
                }
                numInGroupWithCmw++

                double cmw = personalityAnalysisService.computeConflictModeWeight(p.personality)

                if(!seenBefore) {
                    overallAvgCmw += cmw
                }
                groupAvgCmw += cmw
            }
            groupAvgCmw /= numInGroupWithCmw as double
            log.info("Group average CMW: ${groupAvgCmw}")
            groupAvgCmwAverage += groupAvgCmw
        }
        avgGroupSize /= groups.size()
        overallAvgCmw /= numberOfUsersWithPersonality
        groupAvgCmwAverage /= groups.size()

        log.info("Total Number of distinct participants: ${totalNumberUsers}")
        log.info("Total Number of distinct participants with personality: ${numberOfUsersWithPersonality}")
        log.info("Average group size: ${avgGroupSize}")
        log.info("Overall average CMW (of all who have personality):${overallAvgCmw}")
        log.info("Average of Group-Average CMW (of all who have personality):${groupAvgCmwAverage}")
    }

    /**
     * Determines for a given collection of {@link GuratorGroup} s the Ids of the Users and ids of restaurants which
     * were not rated by the individual but by the group as a whole
     * @param groups the collection of groups
     * @return a map of the {@link User}s with the ids of the restaurants
     */
    HashMap<User,Collection<Long>> findMissingIndividualSurveysPerUser(Collection<GuratorGroup> groups) {

        HashMap<User,ArrayList<Long>> result = new HashMap<>()
        HashMap<Long, HashMap<Long, Boolean>> isDuplicate = new HashMap<>()

        for (GuratorGroup group : groups) {

            for (GroupRestaurantSurvey groupRestaurantSurvey : group.restaurantSurveys) {

                Restaurant r = restaurantService.getRestaurant(groupRestaurantSurvey.restaurantYelpId)

                if(r == null) {
                    log.warn("No restaurant found with yelp Id ${groupRestaurantSurvey.restaurantYelpId}")
                    throw new RuntimeException("No restaurant found with yelp Id ${groupRestaurantSurvey.restaurantYelpId}")
                }

                if(isDuplicate[r.id] == null) {
                    isDuplicate[r.id] = new HashMap<>()
                }

                for (Participant participant : group.participants) {

                    List<RestaurantSurvey> surveys =
                            restaurantSurveyRepository.findByParticipantAndRestaurantYelpId(participant,
                                    groupRestaurantSurvey.restaurantYelpId)

                    if (surveys == null || surveys.isEmpty()) {

                        User user = userService.getUser(participant.id as Long)
                        if(user == null) {
                            throw new RuntimeException("No User found for participant with id ${participant.id}")
                        }

                        if(result[user] == null) {
                            result[user] = new ArrayList<Long>()
                        }

                        if(isDuplicate[r.id][participant.id as Long] != null) {
                            continue
                        } else {
                            isDuplicate[r.id][participant.id as Long] = true
                        }

                        result[user].add(r.id as Long)

                    } else if (surveys.size() > 1) {
                        log.warn("Multiple surveys found for paticipant with id ${participant.id} and restaurant ${groupRestaurantSurvey.restaurantYelpId} !")
                    }
                }

            }
        }

        return result
    }

    /**
     * Generates missing ratings based on the group surveys
     * @return the generated ratings
     */
    Collection<GeneratedRating> generateMissingRatings(RestaurantRatingType restaurantRatingType,
                                                          Collection<GuratorGroup> groups) {
        log.info("Gathering all missing surveys for the groups")

        ArrayList<GeneratedRating> result = new ArrayList<>()

        HashMap<User, Collection<Long>> missingRatings = findMissingIndividualSurveysPerUser(groups)

        HashMap<Long,HashMap<Long,Boolean>> actuallygeneratedRatings = new HashMap<>()

        for(User user : missingRatings.keySet()) {
            if(actuallygeneratedRatings[user.id] == null) {
                actuallygeneratedRatings[user.id] = new HashMap<>()
            }
            for(Long id : missingRatings[user]) {
                actuallygeneratedRatings[user.id][id] = false
            }
        }

        log.info("Generating Ratings")
        for(User user : missingRatings.keySet()) {

            SparseVector missingRatingsForUser =
                    individualRecommenderService.predictItemRatings(user.id, missingRatings[user], restaurantRatingType)
            Collection<GeneratedRating> generatedForUser =
                    generateRestaurantRatings(user,missingRatingsForUser, restaurantRatingType)

            if(generatedForUser.size() != missingRatings[user].size()) {

                log.warn("Could not create all ratings for user with id ${user.id}, ${generatedForUser.size()} " +
                        "of ${missingRatings[user].size()}")
            }

            for(GeneratedRating r : generatedForUser) {
                actuallygeneratedRatings[user.id][r.restaurantId.id] = true
            }

            result.addAll(generatedForUser)

        }

        Collection<UserRestaurantPair> couldNotBeCreated = new ArrayList<>()

        for(Long userid : actuallygeneratedRatings.keySet()) {
            for(Long itemid : actuallygeneratedRatings[userid].keySet()) {
                if(!actuallygeneratedRatings[userid][itemid]) {
                    couldNotBeCreated.add(new UserRestaurantPair([user: userService.getUser(userid),
                                                                  restaurant: restaurantService.getRestaurant(itemid)]))
                }
            }
        }

        if(couldNotBeCreated.size() > 0)
            log.warn("In total, ${couldNotBeCreated.size()} pairs could not be created.")

        return result
    }

    /**
     * Takes all ratings and {@link GeneratedRating} for a given Collection
     * of {@link Participant} and combines them into a Collection of {@link CombinedRating}
     * @param participants a given Collection of {@link Participant}
     * @return the resulting Collection of {@link CombinedRating}
     */
    Collection<CombinedRating> combineRatings(Collection<Participant> participants, RestaurantRatingType restaurantRatingType) {
        ArrayList<RestaurantSurvey> actualRatings = new ArrayList<>()
        ArrayList<GeneratedRating> generatedRatings = new ArrayList<>()

        log.info("Finding all actual and generated ratings")
        for(Participant participant : participants) {
            List<RestaurantSurvey> surveys = participant.restaurantSurveys
            actualRatings.addAll(surveys)
            generatedRatings.addAll(generatedRatingRepository.findByParticipant(participant))
        }

        ZonedDateTime now = ZonedDateTime.now()
        String configDetails = individualRecommenderService.getConfigurationDetails()

        HashMap<Participant, HashMap<RestaurantId, CombinedRating>> combined = new HashMap<>()
        ArrayList<CombinedRating> result = new ArrayList<>()

        for(RestaurantSurvey actual : actualRatings) {
            if(combined[actual.participant] == null) {
                combined[actual.participant] = new HashMap<>()
            }

            RestaurantId restaurantId = restaurantService.getRestaurantId(actual.restaurantYelpId)

            CombinedRating rating =
                    new CombinedRating(participant: actual.participant, restaurantId: restaurantId,
                     score: actual.getScoreByType(restaurantRatingType), createdAt: now, details: "",
                    restaurantRatingType: restaurantRatingType)

            combined[actual.participant][restaurantId] = rating

            result.add(rating)
        }

        for(GeneratedRating generated : generatedRatings) {
            if(combined[generated.participant] == null) {
                combined[generated.participant] = new HashMap<>()
            }
            if(combined[generated.participant][generated.restaurantId] != null) {
                log.warn("Found an existing actual rating for participant ${generated.participant.id} and restaurant ${generated.restaurantId.id}. Skipping.")
                continue
            }

            CombinedRating rating =
                    new CombinedRating(participant: generated.participant, restaurantId: generated.restaurantId,
                        score: generated.score, restaurantRatingType: restaurantRatingType,
                        createdAt: now, details: configDetails
                    )

            combined[generated.participant][generated.restaurantId] = rating

            result.add(rating)
        }

        return result
    }

    Collection<GeneratedRating> generateRestaurantRatings(User user, SparseVector predictions, RestaurantRatingType restaurantRatingType) {
        ArrayList<GeneratedRating> result = new ArrayList<>()

        ZonedDateTime now =  ZonedDateTime.now()
        String configDetails = individualRecommenderService.getConfigurationDetails()

        for(VectorEntry entry : predictions) {
            Restaurant restaurant = restaurantService.getRestaurant(entry.getKey())

            if(restaurant == null) {
                throw new IllegalArgumentException("No Restaurant found for id ${entry.getKey()}")
            }
            if(user.participant == null) {
                throw new RuntimeException("User with id ${user.getId()} has no participant assigned to it")
            }

            result.add(new GeneratedRating( createdAt: now, details: configDetails,
                    participant: user.participant, restaurantId: restaurantService.getRestaurantId(restaurant),
                    score      : individualRecommenderService.transformToValidScore(entry.getValue()),
                    restaurantRatingType: restaurantRatingType))
        }

        return result
    }

    Collection<GuratorGroup> getAllGroupsWithType(GroupType groupType) {
        return groupRepository.findByGroupType(groupType)
    }

    double getGroupScore(GroupRestaurantSurvey survey, RestaurantRatingType restaurantRatingType) {
        if(survey == null) {
            throw new IllegalArgumentException("Survey is null")
        }

        double taste = survey.taste as double
        double price = survey.price as double
        double service = survey.service as double
        double clumsiness = survey.clumsiness as double
        double hippieness = survey.hippieness as double
        double location = survey.location as double
        double socialOverlap = survey.socialOverlap as double

        double average = (taste+price+service+clumsiness+hippieness+location+socialOverlap)/7

        switch(restaurantRatingType) {
            case RestaurantRatingType.AVERAGE:
                return average
            case RestaurantRatingType.CLUMSINESS:
                return clumsiness
            case RestaurantRatingType.HIPPIENESS:
                return hippieness
            case RestaurantRatingType.LOCATION:
                return location
            case RestaurantRatingType.PRICE:
                return price
            case RestaurantRatingType.SOCIAL_OVERLAP:
                return socialOverlap
            case RestaurantRatingType.SERVICE:
                return service
            case RestaurantRatingType.TASTE:
                return taste
            default:
                throw new IllegalArgumentException("Unknown RestaurantRatingType")
        }
    }


    Collection<GroupRestaurantRating> getGroupRatings(RecommendationGroup recommendationGroup, RestaurantRatingType restaurantRatingType) {
        GuratorGroup group = recommendationGroup.group
        List<GroupRestaurantSurvey> surveys = group.restaurantSurveys

        ArrayList<GroupRestaurantRating> result = new ArrayList<>()

        for(GroupRestaurantSurvey survey : surveys) {
            result.add(new GroupRestaurantRating(recommendationGroup,
                    restaurantService.getRestaurant(survey.restaurantYelpId), getGroupScore(survey, restaurantRatingType)))
        }
        return result
    }

    /**
     * Examines all {@link GuratorGroup} in the database and returns the ones for which each participant has filled out
     * a {@link UserSurvey} for each of the other group members.
     */
    Collection<GuratorGroup> findAllCompletelySurveyedGroups() {
        Collection<GuratorGroup> result = new ArrayList<GuratorGroup>()

        Collection<GuratorGroup> allGroups = getAllStandardGroups()
        for(GuratorGroup group : allGroups) {
            boolean allSurveysPresent = true
            for(Participant from : group.participants) {
                if(!allSurveysPresent)
                    break
                for(Participant to : group.participants) {
                    if(from == to)
                        continue

                    UserSurvey survey = userSurveyRepository.findByFromParticipantAndToParticipant(from,to)
                    if(survey == null) {
                        allSurveysPresent = false
                        break
                    }

                    survey = userSurveyRepository.findByFromParticipantAndToParticipant(to,from)
                    if(survey == null) {
                        allSurveysPresent = false
                        break
                    }

                }
            }
            if(allSurveysPresent)
                result.add(group)
        }
        return result
    }

    /**
     * Given a map of GroupIds with corresponding subsets of possible subgroups. Subgroups are generated under the
     * following conditions:
     *
     * Only one subgroup is created for each group, namely one with the highest number of members
     * (randomly chosen in case of a tie)
     *
     * Each subgroup has to surpass a threshold of number of members of the full group, so it's not too small.
     *
     * @param subgroupIds a Map containing the possible subsets for given groupIds
     * @param sizeRatioThreshold the subgroup size to group size threshold which needs to be surpassed
     * @return the resulting collection of groups
     */
    private Collection<GuratorGroup> generateSubGroupsFromMaximalSubgroupIds(Map<Integer, List<Set<Integer>>> subgroupIds,
                                     double sizeRatioThreshold) {
        ArrayList<GuratorGroup> result = new ArrayList<>()

        for(Integer groupId : subgroupIds.keySet()) {
            GuratorGroup originalGroup = groupRepository.findById(groupId)

            if(originalGroup == null) {
                log.warn("Could not find group with id ${groupId}")
                continue
            }

            List<GroupRestaurantSurvey> surveys = originalGroup.restaurantSurveys
            if(surveys.isEmpty()) {
                log.warn("Could not find ratings for group")
                continue
            }

            List<Set<Integer>> possibleSubgroups = subgroupIds[groupId]
            if(possibleSubgroups.isEmpty()) {
                log.warn("No possible subgroups supplied")
                continue
            }

            int maximalSubgroupSize = Integer.MIN_VALUE
            for(Set<Integer> subGroupSet : possibleSubgroups) {
                if(maximalSubgroupSize < subGroupSet.size()) {
                    maximalSubgroupSize = subGroupSet.size()
                }
            }

            //check if subgroup is big enough
            int originalGroupSize = originalGroup.participants.size()
            double actualSizeRatio = (maximalSubgroupSize as double) / (originalGroupSize as double)
            if(actualSizeRatio <= sizeRatioThreshold) {
                log.warn("Subgroup is not big enough. Size: ${maximalSubgroupSize}, Group size: ${originalGroupSize}")
                continue
            }

            //Pick the first subgroup with the maximal size
            Set<Integer> targetIds = new HashSet<>()
            for(Set<Integer> subGroupSet : possibleSubgroups) {
                if(maximalSubgroupSize == subGroupSet.size()) {
                    targetIds = subGroupSet
                    break
                }
            }

            List<Participant> subgroupParticipants = new ArrayList<>()
            for(Integer participantId : targetIds) {
                Participant p = participantRepository.findById(participantId)
                if(p == null) {
                    throw new NoSuchElementException("Could not find participant with id ${participantId}")
                }
                subgroupParticipants.add(p)
            }

            GuratorGroup newSubGroup = new GuratorGroup()

            Date now = new Date()

            List<GroupRestaurantSurvey> subGroupSurveys = new ArrayList<>()
            for(GroupRestaurantSurvey s : surveys) {
                GroupRestaurantSurvey newSurvey = new GroupRestaurantSurvey()
                newSurvey.restaurantYelpId = s.restaurantYelpId
                newSurvey.taste = s.taste
                newSurvey.price = s.price
                newSurvey.location = s.location
                newSurvey.clumsiness = s.clumsiness
                newSurvey.service = s.service
                newSurvey.socialOverlap = s.socialOverlap
                newSurvey.hippieness = s.hippieness
                newSurvey.other = "GENERATED RATING"
                newSurvey.group = newSubGroup
                subGroupSurveys.add(newSurvey)
            }

            newSubGroup.restaurantSurveys = subGroupSurveys
            newSubGroup.groupType = GroupType.GENERATED_SUBGROUP
            newSubGroup.name = "Generated subgroup of group ${originalGroup.id} - ${originalGroup.name}"
            newSubGroup.created = now
            newSubGroup.modified = now
            newSubGroup.participants = subgroupParticipants
            newSubGroup.creator = Participant.GROUP_GENERATOR

            result.add(newSubGroup)
        }

        return result
    }

    /**
     * Determines the biggest possible subgroups from a given list of List of Integer lists with ids of {@link Participant}s. The {@link GuratorGroup}s
     * in the database are examined and the possible subgroups are generated and stored in the database
     * @param participantIds the participantIds
     * @param sizeRatioThreshold the subgroup size to group size threshold which needs to be surpassed before a subgroup is generated
     * @return a Map containing the possible subsets for given groupIds
     */
    void generateAndSaveSubgroups(List<List<Integer>> participantIds, double sizeRatioThreshold) {
        Map<Integer, List<Set<Integer>>> maximalSubgroupIds = getMaximalSubgroupIds(participantIds)
        Collection<GuratorGroup> generatedSubgroups = generateSubGroupsFromMaximalSubgroupIds(maximalSubgroupIds,
                sizeRatioThreshold)

        //save Groups
        groupRepository.save(generatedSubgroups)

        //save restaurantRatings
        for(GuratorGroup group : generatedSubgroups) {
            groupRestaurantSurveyRepository.save(group.restaurantSurveys)
        }
    }

    /**
     * Determines the biggest possible subgroups from a given list of List of Integer lists with ids of {@link Participant}s. The {@link GuratorGroup}s
     * in the database are examined and the possible subgroups in form of ids are returned
     * @param participantIds the participantIds
     * @return a Map containing the possible subsets for given groupIds
     */
    Map<Integer, List<Set<Integer>>> getMaximalSubgroupIds(List<List<Integer>> participantIds) {
        HashMap<Integer, List<Set<Integer>>> maximalSubGroups = new HashMap<>()

        for(List<Integer> newSubgroupIds : participantIds) {
            if(newSubgroupIds.isEmpty()) {
                continue
            }

            LinkedHashSet<Integer> newSubgroupParticipantIds = new LinkedHashSet<>(newSubgroupIds)

            Set<Integer> possibleSupergroups = groupMembershipRepository.findGroupIdsByParticipantId(newSubgroupIds.get(0))
            for(int i=1; i<newSubgroupIds.size(); ++i) {
                Set<Integer> newMemberships = groupMembershipRepository.findGroupIdsByParticipantId(newSubgroupIds.get(i))
                possibleSupergroups.retainAll(newMemberships)
            }
            if(possibleSupergroups.isEmpty()) {
                continue
            }

            //insert memberships
            for(Integer groupId : possibleSupergroups) {

                if(!maximalSubGroups.containsKey(groupId)) {
                    maximalSubGroups[groupId] = new ArrayList<Set<Integer>>()
                    //insert directly
                    maximalSubGroups[groupId].add(newSubgroupParticipantIds)
                    continue
                }

                //check if new participant ids is a superset or subset of an already existing entry
                List<Set<Integer>> currentSubgroups = maximalSubGroups[groupId]
                boolean isSuperset = false
                boolean isSubset = false
                List<Set<Integer>> subsets = new ArrayList<>()

                for(int i=0; i<currentSubgroups.size(); ++i) {
                    Set<Integer> currentSubgroup = currentSubgroups.get(i)

                    //check if new set is superset
                    boolean isSupersetToCurrent = true
                    for(Integer id : currentSubgroup) {
                        if(!newSubgroupParticipantIds.contains(id)) {
                            isSupersetToCurrent = false
                            break
                        }
                    }
                    if(isSupersetToCurrent) {
                        isSuperset = true
                        subsets.add(currentSubgroup)
                        continue
                    }

                    //check if new set is subset
                    isSubset = true
                    for(Integer id : newSubgroupParticipantIds) {
                        if(!currentSubgroup.contains(id)) {
                            isSubset = false
                            break
                        }
                    }
                    if(isSubset) {
                        break
                    }

                }

                if(isSubset) {
                    continue
                } else if(isSuperset) {
                    //remove subsets
                    for(Set<Integer> subset : subsets) {
                        maximalSubGroups[groupId].remove(subset)
                    }
                }

                //add new entry
                maximalSubGroups[groupId].add(newSubgroupParticipantIds)
            }

            log.info("ParticipantIds: ${newSubgroupIds} ; Possible subgroup of groups with ids ${possibleSupergroups}")

        }
        return maximalSubGroups
    }

    /**
     * For a given {@link RecommendationGroup}, a Collection of {@link Restaurant}s, checks if all users rated the
     * restaurants exactly once
     * @param recommendationGroup the group
     * @param restaurants the restaurants
     * @return TRUE, if every user of the group has rated the restaurant exactly once, else FALSE
     */
    static boolean checkIfAllRatingsArePresent(RecommendationGroup recommendationGroup, Collection<Restaurant> restaurants) {
        if(recommendationGroup == null || restaurants == null) {
            throw new IllegalArgumentException("Arguments mustn't be null")
        }

        for(Restaurant restaurant : restaurants) {
            for(User user : recommendationGroup.getUsers()) {
                if(!restaurant.hasRatingFrom(user)) {
                    return false
                }
            }
        }
        return true
    }


}
