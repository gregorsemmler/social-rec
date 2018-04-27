package guratorapp.recommendation.model

/**
 * Describes an Item which can receive a {@link RecommendationRating}
 */
interface RecommendationItem {
    /**
     * Retrieve the numerical identifier of this {@link RecommendationItem}.
     * @return An identifier.
     */
    long getRecommendationItemId()

    /**
     * Retrieve the ratingsByUser made for this {@link RecommendationItem}
     * @return the ratingsByUser.
     */
    Collection<RecommendationRating<? extends RecommendationUser, RecommendationItem >> getRatings()

}