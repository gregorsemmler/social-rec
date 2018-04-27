package guratorapp.services

import com.fasterxml.jackson.databind.ObjectMapper
import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import guratorapp.model.GroupRestaurantSurvey
import guratorapp.model.GuratorGroup
import guratorapp.model.RestaurantId
import guratorapp.model.RestaurantSurvey
import guratorapp.recommendation.model.Restaurant
import guratorapp.repositories.GroupRestaurantSurveyRepository
import guratorapp.repositories.RestaurantIdRepository
import guratorapp.repositories.RestaurantSurveyRepository
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

import javax.servlet.http.HttpServletResponse
/**
 * Delivers functionality to make look ups for {@link Restaurant} based on {@link RestaurantId} and String yelp ids and
 * Long ids.
 */
@CompileStatic
@Slf4j
@Service
class RestaurantService {
    @Autowired
    ObjectMapper mapper

    @Autowired
    UserService userService

    @Autowired
    RestaurantSurveyRepository restaurantSurveyRepository

    @Autowired
    RestaurantIdRepository  restaurantIdRepository

    @Autowired
    GroupRestaurantSurveyRepository groupRestaurantSurveyRepository

    private HashMap<String,Long> yelpIdToLongId = new HashMap<>()
    private HashMap<Long,String> longIdToYelpId = new HashMap<>()
    private HashMap<Long,Restaurant> restaurantHashMap = new HashMap<>()

    void setLongIdForYelpId(Long id, String yelpId) {
        yelpIdToLongId[yelpId] = id
        longIdToYelpId[id] = yelpId
    }

    Long getLongIdForYelpId(String yelpId) {
        Long result = yelpIdToLongId[yelpId]

        if(result == null) {
            throw new IllegalArgumentException("Could not find id for yelp id ${yelpId}")
        }
        return result
    }

    String getYelpIdForLongId(Long id) {
        String result = longIdToYelpId[id]
        if(result == null) {
            throw new IllegalArgumentException("Could not find yelp Id for long id ${id}")
        }
        return result
    }

    boolean restaurantWithIdExists(Long id) {
        return restaurantHashMap[id] != null
    }

    boolean restaurantWithIdExists(String yelpId) {
        Long id = yelpIdToLongId[yelpId]
        return id != null && restaurantWithIdExists(id)
    }

    void setRestaurant(Long id, Restaurant restaurant) {
        restaurantHashMap[id] = restaurant
    }

    Restaurant getRestaurant(Long id) {
        Restaurant result = restaurantHashMap[id]
        if(result == null) {
            throw new IllegalArgumentException("No Restaurant Found for id ${id}")
        }
        return result
    }

    Restaurant getRestaurant(String yelpId) {
        return getRestaurant(getLongIdForYelpId(yelpId))
    }

    RestaurantId getRestaurantId(String yelpId) {
        return getRestaurantId(getRestaurant(yelpId))
    }

    RestaurantId getRestaurantId(Restaurant restaurant) {
        RestaurantId restaurantId = restaurantIdRepository.findById(restaurant.id)

        if(restaurantId == null) {
            throw new RuntimeException("Could not find restaurantId with id ${restaurant.id}")
        }

        return restaurantId
    }

    Long getLongIdFromYelpId(String yelpId) {
        RestaurantId restaurantId = restaurantIdRepository.findByYelpId(yelpId)

        if(RestaurantId == null) {
            throw new IllegalArgumentException("Could not find restaurant Id for yelp-id ${yelpId}!")
        }

        return restaurantId.id
    }

    RestaurantId createNewRestaurantId(String yelpId) {
        RestaurantId newId = new RestaurantId([yelpId : yelpId])
        restaurantIdRepository.save(newId)

        Restaurant r = new Restaurant([id : newId.id])

        setRestaurant(newId.id, r)

        return newId
    }

    String generateRestaurantIds(HttpServletResponse response) {
        List<RestaurantSurvey> surveys = restaurantSurveyRepository.findAll()
        List<GroupRestaurantSurvey> groupSurveys = groupRestaurantSurveyRepository.findAll()


        HashMap<String,Boolean> mapped = new HashMap<>()

        for(RestaurantSurvey survey : surveys) {
            mapped[survey.restaurantYelpId] = true
        }
        for(GroupRestaurantSurvey groupRestaurantSurvey : groupSurveys) {
            mapped[groupRestaurantSurvey.restaurantYelpId] = true
        }

        Collection<String> yelpIds = mapped.keySet().toList()

        Collections.sort(yelpIds as List)

        for(String yelpId : yelpIds) {
            RestaurantId restaurantId = restaurantIdRepository.findByYelpId(yelpId)

            if(restaurantId == null) {
                restaurantId = new RestaurantId([yelpId : yelpId])
                restaurantIdRepository.save(restaurantId)
            }
        }
        def success = [success : "true"]
        return mapper.writeValueAsString(success)
    }

    Collection<Restaurant> getAllRestaurantsRatedByGroup(GuratorGroup group) {
        ArrayList<Restaurant> restaurants = new ArrayList<>()

        for(GroupRestaurantSurvey survey : group.restaurantSurveys) {
            restaurants.add(getRestaurant(survey.restaurantYelpId))
        }
        return restaurants
    }
}
