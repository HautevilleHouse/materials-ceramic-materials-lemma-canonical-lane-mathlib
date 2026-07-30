import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsLemmaCanonicalLaneLean

structure ThermalExpansionPackage where
  coefficientOfExpansion : Type u
  anisotropyTensor : Prop
  thermalStrainModel : Prop
  temperatureDependence : Prop
  hystereticBehavior : Prop

structure ThermalExpansionEvidence (T : ThermalExpansionPackage) where
  coefficientOfExpansionClosed : T.coefficientOfExpansion
  anisotropyTensorClosed : T.anisotropyTensor
  thermalStrainModelClosed : T.thermalStrainModel
  temperatureDependenceClosed : T.temperatureDependence
  hystereticBehaviorClosed : T.hystereticBehavior

def ThermalExpansionClosed (T : ThermalExpansionPackage) : Prop :=
  T.coefficientOfExpansion ∧ T.anisotropyTensor ∧
  T.thermalStrainModel ∧ T.temperatureDependence ∧
  T.hystereticBehavior

theorem thermal_expansion_closed_from_evidence (T : ThermalExpansionPackage) (E : ThermalExpansionEvidence T) :
    ThermalExpansionClosed T := by
  exact And.intro E.coefficientOfExpansionClosed
    (And.intro E.anisotropyTensorClosed
      (And.intro E.thermalStrainModelClosed
        (And.intro E.temperatureDependenceClosed E.hystereticBehaviorClosed)))

end MaterialsCeramicMaterialsLemmaCanonicalLaneLean
end HautevilleHouse