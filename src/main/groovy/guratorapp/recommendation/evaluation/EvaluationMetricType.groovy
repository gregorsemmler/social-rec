package guratorapp.recommendation.evaluation

import com.fasterxml.jackson.annotation.JsonValue
import groovy.transform.CompileStatic

/**
 * Describes a Type of a {@link EvaluationMetric}
 */
@CompileStatic
enum EvaluationMetricType {
    MEAN_ABSOLUTE_ERROR(0, "mean_absolute_error"), M_SUCCESS_AT_N(1, "m_success_at_n"),
    PRECISION_AT_N(2, "precision_at_n"), ROOT_MEAN_SQUARED_ERROR(3, "root_mean_squared_error"),
    SUCCESS_AT_N(4, "success_at_n"), NDBPM(5, "normalized_distance_based_performance_measure")

    private Integer id
    private String name


    private EvaluationMetricType(final Integer id, final String name) {
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
     * Converts a given String to a {@link EvaluationMetricType}
     * @param text the text as String
     * @return the resulting EvaluationMetricType
     */
    static EvaluationMetricType fromString(String text) {
        if (text != null) {
            for (EvaluationMetricType t : values()) {
                if (text.equalsIgnoreCase(t.name)) {
                    return t
                }
            }
        }
        throw new IllegalArgumentException("No constant with id " + text + " found")
    }

    /**
     * Returns a new instance of an evaluation metric based on a supplied type
     * @param evaluationMetricType the type of the evaluation metric
     * @return the resulting metric
     */
    static EvaluationMetric createNewEvaluationMetric(EvaluationMetricType evaluationMetricType) {
        switch (evaluationMetricType) {
        case MEAN_ABSOLUTE_ERROR: return new MeanAbsoluteError()
        case M_SUCCESS_AT_N: return new MSuccessAtN()
        case PRECISION_AT_N: return new PrecisionAtN()
        case ROOT_MEAN_SQUARED_ERROR: return new RootMeanSquaredError()
        case SUCCESS_AT_N: return new SuccessAtN()
        default:
            throw new IllegalArgumentException("Unknown metric of type ${evaluationMetricType}")
        }
    }
}