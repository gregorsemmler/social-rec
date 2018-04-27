package guratorapp.recommendation.aggregation

import com.fasterxml.jackson.annotation.JsonValue
import groovy.transform.CompileStatic

/**
 * Describes a Type of a {@link AggregationStrategy}
 */
@CompileStatic
enum AggregationStrategyType {
    AVERAGE(0, "average"), AVERAGE_WITHOUT_MISERY(1, "average_without_misery"), APPROVAL_VOTING(2, "approval_voting"),
    BORDA_COUNT(3, "borda_count"), COPELAND_RULE(4, "copeland_rule"), FAIRNESS(5, "fairness"), LEAST_MISERY(6, "least_misery"),
    MAXIMUM_PLEASURE(7, "maximum_pleasure"), MULTIPLICATIVE(8, "multiplicative"), PLURALITY_VOTING(9, "plurality_voting")

    private Integer id
    private String name


    private AggregationStrategyType(final Integer id, final String name) {
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
     * Converts a given String to a {@link AggregationStrategyType}
     * @param text the text as String
     * @return the resulting AggregationStrategyType
     */
    public static AggregationStrategyType fromString(String text) {
        if (text != null) {
            for (AggregationStrategyType t : AggregationStrategyType.values()) {
                if (text.equalsIgnoreCase(t.name)) {
                    return t;
                }
            }
        }
        throw new IllegalArgumentException("No constant with id " + text + " found")
    }
}