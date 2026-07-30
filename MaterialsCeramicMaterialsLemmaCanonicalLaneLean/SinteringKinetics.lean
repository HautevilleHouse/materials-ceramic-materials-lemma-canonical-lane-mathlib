import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsLemmaCanonicalLaneLean

structure SinteringKineticsPackage where
  initialParticleCoordination : Prop
  neckGrowthRate : Prop
  grainBoundaryDiffusion : Prop
  poreShrinkageModel : Prop
  densificationCurve : Prop
  activationEnergy : Prop
  temperatureDependence : Prop

structure SinteringKineticsEvidence (S : SinteringKineticsPackage) where
  initialParticleCoordinationClosed : S.initialParticleCoordination
  neckGrowthRateClosed : S.neckGrowthRate
  grainBoundaryDiffusionClosed : S.grainBoundaryDiffusion
  poreShrinkageModelClosed : S.poreShrinkageModel
  densificationCurveClosed : S.densificationCurve
  activationEnergyClosed : S.activationEnergy
  temperatureDependenceClosed : S.temperatureDependence

def SinteringKineticsClosed (S : SinteringKineticsPackage) : Prop :=
  S.initialParticleCoordination ∧ S.neckGrowthRate ∧ S.grainBoundaryDiffusion ∧
  S.poreShrinkageModel ∧ S.densificationCurve ∧ S.activationEnergy ∧ S.temperatureDependence

theorem sintering_kinetics_closed_from_evidence (S : SinteringKineticsPackage)
    (E : SinteringKineticsEvidence S) : SinteringKineticsClosed S := by
  exact And.intro E.initialParticleCoordinationClosed
    (And.intro E.neckGrowthRateClosed
      (And.intro E.grainBoundaryDiffusionClosed
        (And.intro E.poreShrinkageModelClosed
          (And.intro E.densificationCurveClosed
            (And.intro E.activationEnergyClosed E.temperatureDependenceClosed)))))

end MaterialsCeramicMaterialsLemmaCanonicalLaneLean
end HautevilleHouse