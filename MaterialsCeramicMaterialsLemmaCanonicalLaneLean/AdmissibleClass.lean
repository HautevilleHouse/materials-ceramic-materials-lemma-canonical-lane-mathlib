import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsLemmaCanonicalLaneLean

structure CeramicAdmittedObject where
  crystalStructure : Type
  latticeParameters : Prop
  phaseStability : Prop
  fractureToughness : Prop
  thermalExpansion : Prop

structure AdmissibleClass where
  object : CeramicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CeramicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsCeramicMaterialsLemmaCanonicalLaneLean
end HautevilleHouse