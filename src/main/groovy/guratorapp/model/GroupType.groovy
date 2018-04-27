package guratorapp.model

import groovy.transform.CompileStatic

import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.Id
import javax.persistence.Table

/**
 * Describes the type of a {@link GuratorGroup} based on the fact if it contains
 * - internal members only (Internal Group)
 * - only one internal member (External Group)
 * - more than one internal and at least one external member (Mixed Group)
 */
@CompileStatic
@Entity
@Table(name = "grouptype")
class GroupType {
    public static final GroupType INTERNAL_GROUP = new GroupType([id: "INTERNAL", description: "Internal Group"])
    public static final GroupType EXTERNAL_GROUP = new GroupType([id: "EXTERNAL", description: "External Group"])
    public static final GroupType MIXED_GROUP = new GroupType([id: "MIXED", description: "Mixed Group"])
    public static final GroupType GENERATED_SUBGROUP = new GroupType(id: "GENSUB", description: "Generated Subgroup")

    private static final List<GroupType> STANDARD_GROUP_TYPES = [INTERNAL_GROUP, EXTERNAL_GROUP, MIXED_GROUP]
    private static final List<GroupType> ALL_GROUP_TYPES = [INTERNAL_GROUP, EXTERNAL_GROUP, MIXED_GROUP, GENERATED_SUBGROUP]

    @Id
    @Column(length = 8)
    String id

    String description

    /**
     * Returns all standard (not generated) available values of {@link GroupType}
     * @return a list of the types
     */
    static List<GroupType> standardTypes() {
        return new ArrayList<GroupType>(STANDARD_GROUP_TYPES)
    }

    /**
     * Returns all standard and generated types of {@link GroupType}
     * @return a list of the types
     */
    static List<GroupType> allTypes() {
        return new ArrayList<GroupType>(ALL_GROUP_TYPES)
    }

    /**
     * Returns the {@link GroupType} object which matches the supplied id, ignoring case
     * @param groupTypeString a string describing the type of the group
     * @return the matching {@link GroupType} object
     */
    static GroupType fromString(String groupTypeString) {
        if(groupTypeString.equalsIgnoreCase(INTERNAL_GROUP.id))
            return INTERNAL_GROUP
        if(groupTypeString.equalsIgnoreCase(EXTERNAL_GROUP.id))
            return EXTERNAL_GROUP
        if(groupTypeString.equalsIgnoreCase(MIXED_GROUP.id))
            return MIXED_GROUP
        if(groupTypeString.equalsIgnoreCase(GENERATED_SUBGROUP.id))
            return GENERATED_SUBGROUP
        throw new IllegalArgumentException("Could not find grouptype ${groupTypeString}")
    }

    @Override
    String toString() {
        return "GroupType{" +
                "id='" + id + '\'' +
                '}';
    }
}
