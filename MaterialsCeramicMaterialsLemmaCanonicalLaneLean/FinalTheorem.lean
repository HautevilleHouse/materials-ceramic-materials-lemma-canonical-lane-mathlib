import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsLemmaCanonicalLaneLean

def ConstrainedCeramicMaterialsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ceramic_materials_endgame (A : AdmissibleClass) :
    ConstrainedCeramicMaterialsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsCeramicMaterialsLemmaCanonicalLaneLean
end HautevilleHouse