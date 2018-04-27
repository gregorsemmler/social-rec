package guratorapp.services.individualrecommendation

import com.fasterxml.jackson.annotation.JsonValue
import groovy.transform.CompileStatic

/**
 * Used to indicate a type of an Individual Recommender
 */
@CompileStatic
enum IndividualRecommenderType {
    USER_USER_COLLABORATIVE_FILTERING(0, "user_user_collaborative_filtering"),
    ITEM_ITEM_COLLABORATIVE_FILTERING(1, "item_item_collaborative_filtering")

    private Integer id
    private String name


    private IndividualRecommenderType(final Integer id, final String name) {
        this.id = id
        this.name = name
    }

    Integer getId() {
        return id
    }

    @JsonValue
    String getName() {
        return name
    }

    /**
     * Converts a given String to a {@link IndividualRecommenderType}
     * @param text the text as String
     * @return the resulting IndividualRecommenderType
     */
    static IndividualRecommenderType fromString(String text) {
        if (text != null) {
            for (IndividualRecommenderType t : values()) {
                if (text.equalsIgnoreCase(t.name)) {
                    return t
                }
            }
        }
        throw new IllegalArgumentException("No constant with id " + text + " found")
    }
}