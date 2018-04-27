package guratorapp.recommendation.model

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.model.GuratorGroup

/**
 * A group in the recommendation context.
 */
@Slf4j
@CompileStatic
class RecommendationGroup implements RecommendationUser {

    GuratorGroup group
    long id
    ArrayList<User> users = new ArrayList<User>()

    public Collection<User> getUsers() {
        return users
    }

    GuratorGroup getGroup() {
        if(group == null) {
            throw new NullPointerException("Group parameter not set")
        }
        return group
    }

    @Override
    long getRecommendationUserId() {
        return id
    }

    void addUser(User user) {
        if(!users.contains(user)) {
            users.add(user)
        }
    }

    /**
     * Returns all ratings made by members of this group
     * @return
     */
    @Override
    Collection<RestaurantRating> getRatings() {
        ArrayList<RestaurantRating> result = new ArrayList<>()

        for(User u: getUsers()) {
            result.addAll(u.getRatings())
        }
        return result
    }


    @Override
    public String toString() {
        return "RecommendationGroup{" +
                "id=" + id +
                '}';
    }
}
