package guratorapp.services

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.recommendation.model.User
import org.springframework.stereotype.Service
/**
 * Sets up lookups for Users and functions to convert Ratings.
 */
@Slf4j
@CompileStatic
@Service
class UserService {

    private static HashMap<Long,User> userHashMap = new HashMap<>()

    public static User getUser(Long id) {
        return userHashMap[id]
    }


    public static void setUser(Long id, User user) {
        userHashMap[id] = user
    }

}
