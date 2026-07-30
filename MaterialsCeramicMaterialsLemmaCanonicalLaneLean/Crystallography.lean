import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsLemmaCanonicalLaneLean

structure CrystallographyPackage where
  latticeStructure : Type u
  basisVectors : Type v
  symmetryGroup : Type w
  bravaisLatticeClassified : Prop
  spaceGroupDetermined : Prop
  crystalSystemIdentified : Prop
  pointGroupSymmetries : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClassifiedClosed : C.bravaisLatticeClassified
  spaceGroupDeterminedClosed : C.spaceGroupDetermined
  crystalSystemIdentifiedClosed : C.crystalSystemIdentified
  pointGroupSymmetriesClosed : C.pointGroupSymmetries

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLatticeClassified ∧ C.spaceGroupDetermined ∧
  C.crystalSystemIdentified ∧ C.pointGroupSymmetries

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeClassifiedClosed
    (And.intro E.spaceGroupDeterminedClosed
      (And.intro E.crystalSystemIdentifiedClosed E.pointGroupSymmetriesClosed))

end MaterialsCeramicMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
