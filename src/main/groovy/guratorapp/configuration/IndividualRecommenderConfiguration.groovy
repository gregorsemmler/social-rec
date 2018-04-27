package guratorapp.configuration

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.services.individualrecommendation.IndividualRecommenderType
import org.springframework.beans.factory.annotation.Value
import org.springframework.stereotype.Component

import javax.annotation.PostConstruct

/**
 * Stores configuration information about the Individual Recommender
 * to be accessed by other beans.
 */
@CompileStatic
@Slf4j
@Component
class IndividualRecommenderConfiguration {

    IndividualRecommenderType individualRecommenderType

    private double minimalPossibleScore = 0
    private double maximalPossibleScore = 100

    double getMinimalPossibleScore() {
        return minimalPossibleScore
    }

    double getMaximalPossibleScore() {
        return maximalPossibleScore
    }

    @Value('${recommender.individual.numberOfUserUserNeighbors:30}')
    Integer numberOfUserUserNeighbors

    @Value('${recommender.individual.numberOfItemItemNeighbors:20}')
    Integer numberOfItemItemNeighbors

    @Value('${recommender.individual.type:user_user_collaborative_filtering}')
    private String individualRecommenderTypeString

    @PostConstruct
    private void initialize() {
        try {
            individualRecommenderType = IndividualRecommenderType.fromString(individualRecommenderTypeString)
        } catch(IllegalArgumentException e) {
            log.warn("Could not create aggregationStrategy with type ${individualRecommenderTypeString}")
        }
    }

    @Override
    String toString() {
        return "IndividualRecommenderConfiguration{" +
                "individualRecommenderType=" + individualRecommenderType +
                ", minimalPossibleScore=" + minimalPossibleScore +
                ", maximalPossibleScore=" + maximalPossibleScore +
                ", numberOfUserUserNeighbors=" + numberOfUserUserNeighbors +
                ", numberOfItemItemNeighbors=" + numberOfItemItemNeighbors +
                '}';
    }
}
