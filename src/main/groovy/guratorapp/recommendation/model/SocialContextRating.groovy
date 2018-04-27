package guratorapp.recommendation.model

import groovy.transform.CompileStatic

/**
 * Defines a modifed rating for a restaurant which was calculated by incorporating social context parameters.
 */
@CompileStatic
class SocialContextRating extends RestaurantRating {
    protected RecommendationGroup group

    SocialContextRating(User user, RecommendationGroup group, Restaurant restaurant, double score) {
        super(user,restaurant,score)
        this.group = group
    }
}
