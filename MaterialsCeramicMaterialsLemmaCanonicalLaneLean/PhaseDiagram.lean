import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureRange : Type u
  compositionRange : Type v
  phaseRegions : Prop
  phaseBoundaries : Prop
  gibbsFreeEnergy : Prop
  solidSolutionRegions : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseRegionsClosed : P.phaseRegions
  phaseBoundariesClosed : P.phaseBoundaries
  gibbsFreeEnergyClosed : P.gibbsFreeEnergy
  solidSolutionRegionsClosed : P.solidSolutionRegions

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseRegions ∧ P.phaseBoundaries ∧ P.gibbsFreeEnergy ∧ P.solidSolutionRegions

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseRegionsClosed
    (And.intro E.phaseBoundariesClosed
      (And.intro E.gibbsFreeEnergyClosed E.solidSolutionRegionsClosed))

end MaterialsCeramicMaterialsLemmaCanonicalLaneLean
end HautevilleHouse