package guratorapp.recommendation.evaluation

import groovy.transform.CompileStatic
import guratorapp.recommendation.model.GroupRestaurantRating
import guratorapp.recommendation.model.RestaurantRating
import guratorapp.recommendation.model.User

/**
 * For a given {@link RestaurantRating} or {@link GroupRestaurantRating}, normalizes their scores so that they are in
 * a particular range.
 */
@CompileStatic
class RatingNormalizer {
    private double targetMinimalScore
    private double targetMaximalScore

    RatingNormalizer(double targetMinimalScore, double targetMaximalScore) {
        if(targetMinimalScore >= targetMaximalScore) {
            throw new IllegalArgumentException("Minimal score needs to be smaller than the maximal score")
        }

        this.targetMinimalScore = targetMinimalScore
        this.targetMaximalScore = targetMaximalScore
    }

    /**
     * Gets the minimal score of this normalizer
     * @return the minimal score
     */
    double getTargetMinimalScore() {
        return targetMinimalScore
    }

    /**
     * Gets the maximal score of this normalizer
     * @return the maximal score
     */
    double getTargetMaximalScore() {
        return targetMaximalScore
    }

    /**
     * Normalizes a collection of given ratings so that their values fall into the range.
     * @param ratings the resulting normalized ratings
     */
    Collection<RestaurantRating> normalizeRatings(Collection<RestaurantRating> ratings) {
        double minimalRating = Double.MAX_VALUE
        double maximalRating = Double.MIN_VALUE

        for(RestaurantRating rating : ratings) {
            if(rating.score < minimalRating) {
                minimalRating = rating.score
            }
            if(rating.score > maximalRating) {
                maximalRating = rating.score
            }
        }

        Collection<RestaurantRating> result = new ArrayList<RestaurantRating>(ratings.size())

        for(RestaurantRating rating : ratings) {
            result.add(new RestaurantRating((User)rating.user, rating.restaurant,
                    normalizeScore(minimalRating, maximalRating, rating.score), rating.restaurantRatingType))
        }

        return result
    }

    /**
     * Normalizes a collection of given ratings so that their values fall into the correct range.
     * @param ratings the resulting normalized ratings
     */
    Collection<GroupRestaurantRating> normalizeGroupRatings(Collection<GroupRestaurantRating> ratings) {
        double minimalRating = Double.MAX_VALUE
        double maximalRating = Double.MIN_VALUE

        for(GroupRestaurantRating rating : ratings) {
            if(rating.score < minimalRating) {
                minimalRating = rating.score
            }
            if(rating.score > maximalRating) {
                maximalRating = rating.score
            }
        }

        Collection<GroupRestaurantRating> result = new ArrayList<GroupRestaurantRating>(ratings.size())

        for(GroupRestaurantRating rating : ratings) {
            result.add(new GroupRestaurantRating(rating.group, rating.restaurant,
                    normalizeScore(minimalRating, maximalRating, rating.score)))
        }

        return result
    }

    /**
     * Normalizes the supplied score on the basis of the minimal and maximal target scores of this normalizer.
     * @param minimalScore the minimal score the score falls into
     * @param maximalScore the maximal score the score falls into
     * @param score the input score
     * @return the resulting score
     */
    double normalizeScore(double minimalScore, double maximalScore, double score) {
        if(maximalScore == minimalScore) return maximalScore
        return (score - minimalScore)/(maximalScore - minimalScore)*(targetMaximalScore - targetMinimalScore)
    }

    @Override
    String toString() {
        return "RatingNormalizer{" +
                "targetMinimalScore=" + targetMinimalScore +
                ", targetMaximalScore=" + targetMaximalScore +
                '}';
    }
}
