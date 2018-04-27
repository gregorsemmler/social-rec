package guratorapp.configuration

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import org.springframework.beans.factory.annotation.Value
import org.springframework.stereotype.Component

import javax.annotation.PostConstruct

/**
 * Stores configuration information about different evaluation parameters
 */
@CompileStatic
@Slf4j
@Component
class EvaluationConfiguration {

    @Value('${evaluation.metric.precisionAtN.N:3}')
    Integer precisionAtNValueofN

    @Value('${evaluation.metric.successAtN.N:3}')
    Integer successAtNValueofN

    @Value('${evaluation.metric.mSuccessAtN.N:3}')
    Integer mSuccessAtNValueofN

    @Value('${evaluation.metric.mSuccessAtN.M:2}')
    Integer mSuccessAtNValueofM

    @PostConstruct
    void checkParameters() {
        if(precisionAtNValueofN < 1)
            throw new RuntimeException("Invalid configuration parameter")

        if(successAtNValueofN < 1)
            throw new RuntimeException("Invalid configuration parameter")

        if(precisionAtNValueofN < 1)
            throw new RuntimeException("Invalid configuration parameter")

        if(mSuccessAtNValueofN < 1)
            throw new RuntimeException("Invalid configuration parameter")

        if(mSuccessAtNValueofM < 1 || (mSuccessAtNValueofM > mSuccessAtNValueofN))
            throw new RuntimeException("Invalid configuration parameter")
    }

}
