package guratorapp.model

import groovy.transform.CompileStatic
import guratorapp.recommendation.aggregation.AggregationStrategyType
import guratorapp.recommendation.model.RestaurantRatingType
import guratorapp.services.grouprecommendation.RecommenderType

import javax.persistence.*
import java.time.ZonedDateTime

/**
 * Contains information about a recommendation process. Used to store information about a rating which was generated
 * by a recommender.
 */
@CompileStatic
@Entity
@Table(name = "recommendation_context")
class RecommendationContext {
    @Id
    @GeneratedValue
    @Column(name = "id")
    Long id

    @Enumerated(EnumType.STRING)
    RestaurantRatingType ratingType

    @Enumerated(EnumType.STRING)
    AggregationStrategyType aggregationStrategyType

    @Enumerated(EnumType.STRING)
    RecommenderType recommenderType

    @ManyToOne
    GroupType groupType

    ZonedDateTime createdAt

    @Lob
    String details
}
