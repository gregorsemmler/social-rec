package guratorapp.services.grouprecommendation

import com.fasterxml.jackson.annotation.JsonValue
import groovy.transform.CompileStatic

/**
 * Used to indicate a type of a Recommender
 */
@CompileStatic
enum RecommenderType {
    STANDARD(0, "standard"), DELEGATION_BASED(1, "delegation_based"),
    SOCIAL_CONTEXT(2, "social_context")

    private Integer id
    private String name


    private RecommenderType(final Integer id, final String name) {
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
     * Converts a given String to a {@link RecommenderType}
     * @param text the text as String
     * @return the resulting RecommenderType
     */
    static RecommenderType fromString(String text) {
        if (text != null) {
            for (RecommenderType t : values()) {
                if (text.equalsIgnoreCase(t.name)) {
                    return t
                }
            }
        }
        throw new IllegalArgumentException("No constant with id " + text + " found")
    }
}