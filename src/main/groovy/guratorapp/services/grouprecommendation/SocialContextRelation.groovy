package guratorapp.services.grouprecommendation

import groovy.transform.CompileStatic

/**
 * Contains social context parameters to signify a relation. The Parameters are normalized.
 */
@CompileStatic
class SocialContextRelation {
    double domainExpertise
    double socialCapital
    double tieStrength
    double socialSimilarity
    double socialContextSimilarity
    double sympathy
    double socialHierarchy

    @Override
    String toString() {
        return "SocialContextRelation{" +
                "domainExpertise=" + domainExpertise +
                ", socialCapital=" + socialCapital +
                ", tieStrength=" + tieStrength +
                ", socialSimilarity=" + socialSimilarity +
                ", socialContextSimilarity=" + socialContextSimilarity +
                ", sympathy=" + sympathy +
                ", socialHierarchy=" + socialHierarchy +
                '}';
    }
}
