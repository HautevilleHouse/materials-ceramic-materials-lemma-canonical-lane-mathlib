import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsLemmaCanonicalLaneLean

structure ElasticityTensorPackage where
  stiffnessTensor : Type u
  complianceTensor : Type v
  symmetryReduction : Prop
  crystalSystemClass : Prop
  elasticConstants : Prop
  bornStabilityCriteria : Prop

structure ElasticityTensorEvidence (E : ElasticityTensorPackage) where
  symmetryReductionClosed : E.symmetryReduction
  crystalSystemClassClosed : E.crystalSystemClass
  elasticConstantsClosed : E.elasticConstants
  bornStabilityCriteriaClosed : E.bornStabilityCriteria

def ElasticityTensorClosed (E : ElasticityTensorPackage) : Prop :=
  E.symmetryReduction ∧ E.crystalSystemClass ∧ E.elasticConstants ∧ E.bornStabilityCriteria

theorem elasticity_tensor_closed_from_evidence (E : ElasticityTensorPackage)
    (Ev : ElasticityTensorEvidence E) : ElasticityTensorClosed E := by
  exact And.intro Ev.symmetryReductionClosed
    (And.intro Ev.crystalSystemClassClosed
      (And.intro Ev.elasticConstantsClosed Ev.bornStabilityCriteriaClosed))

end MaterialsCeramicMaterialsLemmaCanonicalLaneLean
end HautevilleHouse