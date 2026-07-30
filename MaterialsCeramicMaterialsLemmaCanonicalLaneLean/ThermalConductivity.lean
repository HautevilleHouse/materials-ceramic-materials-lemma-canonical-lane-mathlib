import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsLemmaCanonicalLaneLean

structure ThermalConductivityPackage where
  temperatureDependence : Type u
  phononScattering : Type v
  latticeContribution : Prop
  porosityEffect : Prop
  grainBoundaryResistance : Prop
  thermalConductivityValue : Prop

structure ThermalConductivityEvidence (T : ThermalConductivityPackage) where
  latticeContributionClosed : T.latticeContribution
  porosityEffectClosed : T.porosityEffect
  grainBoundaryResistanceClosed : T.grainBoundaryResistance
  thermalConductivityValueClosed : T.thermalConductivityValue

def ThermalConductivityClosed (T : ThermalConductivityPackage) : Prop :=
  T.latticeContribution ∧ T.porosityEffect ∧ T.grainBoundaryResistance ∧ T.thermalConductivityValue

theorem thermal_conductivity_closed_from_evidence (T : ThermalConductivityPackage)
    (E : ThermalConductivityEvidence T) : ThermalConductivityClosed T := by
  exact And.intro E.latticeContributionClosed
    (And.intro E.porosityEffectClosed
      (And.intro E.grainBoundaryResistanceClosed E.thermalConductivityValueClosed))

end MaterialsCeramicMaterialsLemmaCanonicalLaneLean
end HautevilleHouse