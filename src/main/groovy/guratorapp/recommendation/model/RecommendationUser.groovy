package guratorapp.recommendation.model

/**
 * A user in the context of a recommender system. It consists of an Id and a Collection of {@link RecommendationRating}
 */
public interface RecommendationUser {

    /**
     * Retrieve the numerical identifier of this {@link RecommendationUser}.
     * @return An identifier.
     */
    long getRecommendationUserId()

    /**
     * Retrieve the ratingsByUser made by this {@link RecommendationUser}
     * @return the ratingsByUser.
     */
    Collection<RecommendationRating<RecommendationUser, ? extends RecommendationItem>> getRatings()
}