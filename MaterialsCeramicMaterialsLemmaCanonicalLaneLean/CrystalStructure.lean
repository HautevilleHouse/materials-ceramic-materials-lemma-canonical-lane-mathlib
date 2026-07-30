import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsLemmaCanonicalLaneLean

structure CrystalStructurePackage where
  unitCell : Type u
  latticeParameters : Type v
  bravaisLattice : Type w
  symmetricOperations : Prop
  basisAtoms : Prop
  symmetryGroup : Prop

structure CrystalStructureEvidence (C : CrystalStructurePackage) where
  symmetricOperationsClosed : C.symmetricOperations
  basisAtomsClosed : C.basisAtoms
  symmetryGroupClosed : C.symmetryGroup

def CrystalStructureClosed (C : CrystalStructurePackage) : Prop :=
  C.symmetricOperations ∧ C.basisAtoms ∧ C.symmetryGroup

theorem crystal_structure_closed_from_evidence (C : CrystalStructurePackage)
    (E : CrystalStructureEvidence C) : CrystalStructureClosed C := by
  exact And.intro E.symmetricOperationsClosed
    (And.intro E.basisAtomsClosed E.symmetryGroupClosed)

end MaterialsCeramicMaterialsLemmaCanonicalLaneLean
end HautevilleHouse