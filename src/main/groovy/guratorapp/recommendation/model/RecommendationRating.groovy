package guratorapp.recommendation.model

/**
 * A recommendation Rating for a {@link RecommendationUser} and a {@link RecommendationItem}, associated with a score.
 */
public interface RecommendationRating<U extends RecommendationUser, I extends RecommendationItem> {

    /**
     * Retrieve the {@link RecommendationUser} this {@link RecommendationRating} is referring to
     * @return The {@link RecommendationUser}
     */
    U getUser()

    /**
     * Retrieve the {@link RecommendationItem} this {@link RecommendationRating} is referring to
     * @return The {@link RecommendationItem}
     */
    I getItem()

    /**
     * Retrieve the score of this {@link RecommendationRating}.
     * @return the score of this {@link RecommendationRating}.
     */
    double getScore()
}