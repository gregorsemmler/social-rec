package guratorapp.recommendation.model

import com.fasterxml.jackson.annotation.JsonFormat
import com.fasterxml.jackson.annotation.JsonValue

/**
 * Type of a {@link RestaurantRating}
 */
@JsonFormat(shape = JsonFormat.Shape.OBJECT)
enum RestaurantRatingType {
    AVERAGE(0, "average"), TASTE(1, "taste"), PRICE(2, "price"), CLUMSINESS(3, "clumsiness"), SERVICE(4, "SERVICE"),
    HIPPIENESS(5, "hippieness"), LOCATION(6, "location"), SOCIAL_OVERLAP(7, "social_overlap")

    private Integer id
    private String name


    private RestaurantRatingType(final Integer id, final String name) {
        this.id = id
        this.name = name
    }

    public Integer getId() {
        return id
    }

    @JsonValue
    public String getName() {
        return name
    }

    /**
     * Converts a given String to a {@link RestaurantRatingType}
     * @param text the text as String
     * @return the resulting RestaurantRatingType
     */
    public static RestaurantRatingType fromString(String text) {
        if (text != null) {
            for (RestaurantRatingType t : RestaurantRatingType.values()) {
                if (text.equalsIgnoreCase(t.name)) {
                    return t
                }
            }
        }
        throw new IllegalArgumentException("No constant with id " + text + " found")
    }
}