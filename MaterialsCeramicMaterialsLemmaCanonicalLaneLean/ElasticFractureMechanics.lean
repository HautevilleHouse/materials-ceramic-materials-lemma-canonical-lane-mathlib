import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsLemmaCanonicalLaneLean

structure ElasticFractureMechanicsPackage where
  linearElasticConstitutiveLaw : Prop
  stressConcentrationAtFlaw : Prop
  griffithCriterion : Prop
  criticalStressIntensity : Prop
  crackPropagationModel : Prop
  rCurveBehavior : Prop
  cyclicFatigueDegradation : Prop

structure ElasticFractureMechanicsEvidence (E : ElasticFractureMechanicsPackage) where
  linearElasticConstitutiveLawClosed : E.linearElasticConstitutiveLaw
  stressConcentrationAtFlawClosed : E.stressConcentrationAtFlaw
  griffithCriterionClosed : E.griffithCriterion
  criticalStressIntensityClosed : E.criticalStressIntensity
  crackPropagationModelClosed : E.crackPropagationModel
  rCurveBehaviorClosed : E.rCurveBehavior
  cyclicFatigueDegradationClosed : E.cyclicFatigueDegradation

def ElasticFractureMechanicsClosed (E : ElasticFractureMechanicsPackage) : Prop :=
  E.linearElasticConstitutiveLaw ∧ E.stressConcentrationAtFlaw ∧ E.griffithCriterion ∧
  E.criticalStressIntensity ∧ E.crackPropagationModel ∧ E.rCurveBehavior ∧ E.cyclicFatigueDegradation

theorem elastic_fracture_mechanics_closed_from_evidence (E : ElasticFractureMechanicsPackage)
    (Ev : ElasticFractureMechanicsEvidence E) : ElasticFractureMechanicsClosed E := by
  exact And.intro Ev.linearElasticConstitutiveLawClosed
    (And.intro Ev.stressConcentrationAtFlawClosed
      (And.intro Ev.griffithCriterionClosed
        (And.intro Ev.criticalStressIntensityClosed
          (And.intro Ev.crackPropagationModelClosed
            (And.intro Ev.rCurveBehaviorClosed Ev.cyclicFatigueDegradationClosed)))))

end MaterialsCeramicMaterialsLemmaCanonicalLaneLean
end HautevilleHouse