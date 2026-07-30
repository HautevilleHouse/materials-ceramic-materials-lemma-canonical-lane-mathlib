import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CeramicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsCeramicMaterialsLemmaCanonicalLaneLean
end HautevilleHouse