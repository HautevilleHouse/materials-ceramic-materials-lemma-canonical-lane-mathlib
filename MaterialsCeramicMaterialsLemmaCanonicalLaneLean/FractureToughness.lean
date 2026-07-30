import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsLemmaCanonicalLaneLean

structure FractureMechanics where
  stressIntensityFactor : Type u
  fractureToughnessComputed : Prop
  crackPropagationCriteria : Prop
  rCurveDetermined : Prop

structure FractureMechanicsEvidence (F : FractureMechanics) where
  fractureToughnessComputedClosed : F.fractureToughnessComputed
  crackPropagationCriteriaClosed : F.crackPropagationCriteria
  rCurveDeterminedClosed : F.rCurveDetermined

def FractureMechanicsClosed (F : FractureMechanics) : Prop :=
  F.fractureToughnessComputed ∧ F.crackPropagationCriteria ∧ F.rCurveDetermined

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanics)
    (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F :=
  And.intro E.fractureToughnessComputedClosed
    (And.intro E.crackPropagationCriteriaClosed E.rCurveDeterminedClosed)

end MaterialsCeramicMaterialsLemmaCanonicalLaneLean
end HautevilleHouse