package guratorapp.recommendation.model

import groovy.transform.CompileStatic

/**
 * Describes a so called delegation-based rating for a supplied {@link User} who is a member of a
 * {@link RecommendationGroup} a {@link Restaurant} for which the ratings are aggregated.
 *
 * The calculation is based on the following paper:
 *
 * Quijano-Sanchez, Lara; Recio-Garcia, Juan A.; Diaz-Agudo, Belen: Group recommendation methods for social network
 * environments. In: 3rd Workshop on Recommender Systems and the Social Web 5th ACM International Conference
 * on Recommender Systems, RecSys’11.
 */
@CompileStatic
class DelegationBasedRating extends RestaurantRating {

    protected RecommendationGroup group

    DelegationBasedRating(User user, RecommendationGroup group, Restaurant restaurant, double score) {
        super(user,restaurant,score)
        this.group = group
    }
}
