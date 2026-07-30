import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsLemmaCanonicalLaneLean

structure FractureMechanicsPackage where
  crackGeometry : Type u
  stressField : Type v
  stressIntensityFactor : Prop
  fractureToughness : Prop
  crackPropagationCriterion : Prop
  thermalShockResistance : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  stressIntensityFactorClosed : F.stressIntensityFactor
  fractureToughnessClosed : F.fractureToughness
  crackPropagationCriterionClosed : F.crackPropagationCriterion
  thermalShockResistanceClosed : F.thermalShockResistance

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.stressIntensityFactor ∧ F.fractureToughness ∧ F.crackPropagationCriterion ∧ F.thermalShockResistance

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage)
    (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.stressIntensityFactorClosed
    (And.intro E.fractureToughnessClosed
      (And.intro E.crackPropagationCriterionClosed E.thermalShockResistanceClosed))

end MaterialsCeramicMaterialsLemmaCanonicalLaneLean
end HautevilleHouse