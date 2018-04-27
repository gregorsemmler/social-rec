package guratorapp.model

import groovy.transform.CompileStatic
import org.hibernate.annotations.LazyCollection
import org.hibernate.annotations.LazyCollectionOption

import javax.persistence.*
/**
 * A participant in the GuratorApp Context.
 */
@CompileStatic
@Entity
@Table(name = "participant")
class Participant {

    /**
     * Participant Entity which is used to mark generated groups
     */
    public static Participant GROUP_GENERATOR = new Participant(id: 1, name: "Artificial Participant for group generation",
     realName: "", email: "", email2: "", acceptedTermsConditions: true, ip: "127.0.0.1", gender: "", picture: "",
            birthdate : new Date(0L), matriculationNumber: "", isInternal: false, userId: 1,
            gpsLong: "", gpsLat: "", grade: "", country: "", personalityTestDone: false)

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    Integer id
    String name
    String realName
    String email
    String email2
    boolean acceptedTermsConditions
    String ip
    String gender
    String picture
    Date birthdate
    String matriculationNumber
    String gpsLong
    String gpsLat
    String grade
    String country
    boolean personalityTestDone
    boolean isInternal
    Integer userId

    @OneToMany(mappedBy = "participant")
    @LazyCollection(LazyCollectionOption.FALSE)
    List<ParticipantPersonalityQuestion> personalityQuestions

    @OneToMany(mappedBy = "participant")
    @LazyCollection(LazyCollectionOption.FALSE)
    List<RestaurantSurvey> restaurantSurveys

    @OneToOne(fetch = FetchType.EAGER)
    Personality personality

    @Override
    public String toString() {
        return "Participant{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }

    boolean equals(o) {
        if (this.is(o)) return true
        if (getClass() != o.class) return false

        Participant that = (Participant) o

        if (id != that.id) return false

        return true
    }

    int hashCode() {
        return id.hashCode()
    }
}
