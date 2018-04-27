package guratorapp.configuration

import com.fasterxml.jackson.databind.ObjectMapper
import com.fasterxml.jackson.databind.SerializationFeature
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule
import groovy.transform.CompileStatic
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import org.springframework.context.annotation.Primary

/**
 * Contains configuration information about the {@link ObjectMapper} which is used to serialize and deserialize
 * objects to and from JSON.
 */
@CompileStatic
@Configuration
class JacksonConfiguration {
    @Bean
    @Primary
    ObjectMapper mapper() {
        ObjectMapper mapper = new ObjectMapper()
        mapper.registerModule(new JavaTimeModule())
        mapper.disable(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS)
        mapper.disable(SerializationFeature.WRITE_DATES_WITH_ZONE_ID)
    }
}
