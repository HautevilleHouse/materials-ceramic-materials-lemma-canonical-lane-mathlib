import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsLemmaCanonicalLaneLean

structure CeramicAdmittedObject where
  crystalStructure : Prop
  phaseDiagram : Prop
  elasticityTensor : Prop
  fractureToughness : Prop
  conclusion : crystalStructure ∧ phaseDiagram ∧ elasticityTensor ∧ fractureToughness

def CeramicWitnessClosed (O : CeramicAdmittedObject) : Prop :=
  O.crystalStructure ∧ O.phaseDiagram ∧ O.elasticityTensor ∧ O.fractureToughness

end MaterialsCeramicMaterialsLemmaCanonicalLaneLean
end HautevilleHouse