package guratorapp.model

import groovy.transform.CompileStatic
import guratorapp.model.ratings.GroupPredictedRating
import guratorapp.recommendation.evaluation.EvaluationMetricType
import org.hibernate.annotations.LazyCollection
import org.hibernate.annotations.LazyCollectionOption

import javax.persistence.*
/**
 * Stores information about an evaluation
 */
@CompileStatic
@Entity
@Table(name = "evaluation_result")
class EvaluationResult {
    @Id
    @GeneratedValue
    @Column(name = "id")
    Long id

    @Column(nullable = true)
    Double score

    @ManyToMany
    @JoinTable
    (
        name = "rating_evaluation",
        joinColumns=[@JoinColumn(name="evaluation_result_id", referencedColumnName="id" )],
        inverseJoinColumns=[ @JoinColumn(name="predicted_rating_id", referencedColumnName = "id")]
    )
    @LazyCollection(LazyCollectionOption.FALSE)
    Collection<GroupPredictedRating> testRatings

    @Enumerated(EnumType.STRING)
    EvaluationMetricType metricType

    String configurationDetails

    String normalizationDetails

    @ManyToOne
    @JoinColumn(name = "recommendation_context_id")
    RecommendationContext recommendationContext

    @Override
    String toString() {
        return "EvaluationResult{" +
                "id=" + id +
                ", score=" + score +
                ", configurationDetails='" + configurationDetails + '\'' +
                ", normalizationDetails='" + normalizationDetails + '\'' +
                '}';
    }
}
