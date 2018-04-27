package guratorapp.recommendation.aggregation

import groovy.transform.CompileStatic
import guratorapp.recommendation.model.RecommendationRating
import guratorapp.recommendation.model.RecommendationItem
import guratorapp.recommendation.model.RecommendationUser

/**
 * Given a {@link Collection} of {@link RecommendationItem}, generates a {@link Collection} of  {@link RecommendationRating}
 */
@CompileStatic
interface AggregationStrategy<R extends RecommendationRating, I extends RecommendationItem, U extends RecommendationUser> {

    /**
     * Given a {@link Collection} of {@link RecommendationItem}s, generates a {@link Collection} of
     * {@link RecommendationRating}
     * @param ratingsByUser the ratingsByUser
     * @param user the {@link RecommendationUser} for which the Rating should be generated
     * @return a Collection of {@link RecommendationRating}
     */
    public Collection<R> aggregateRatings(Collection<I> items, U user)
}