package guratorapp.model

import groovy.transform.CompileStatic
import org.hibernate.annotations.LazyCollection
import org.hibernate.annotations.LazyCollectionOption

import javax.persistence.*

/**
 * A group in the GuratorApp Context.
 */
@CompileStatic
@Entity
@Table(name = "guratorgroup")
class GuratorGroup {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    Integer id
    String name
    Date created
    Date modified

    @OneToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "creator_id")
    Participant creator

    @OneToMany
    @JoinTable
    (
        name = "groupparticipant",
        joinColumns=[@JoinColumn(name="group_id", referencedColumnName="id" )],
        inverseJoinColumns=[ @JoinColumn(name="participant_id", referencedColumnName = "id", unique = true)]
    )
    @LazyCollection(LazyCollectionOption.FALSE)
    List<Participant> participants

    @OneToMany(mappedBy = "group")
    @LazyCollection(LazyCollectionOption.FALSE)
    List<GroupRestaurantSurvey> restaurantSurveys

    @ManyToOne
    GroupType groupType

    @Override
    String toString() {
        return "GuratorGroup{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", groupType=" + groupType +
                '}';
    }
}
