import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsLemmaCanonicalLaneLean

structure PhaseEquilibriumPackage where
  gibbsFreeEnergyMinimization : Prop
  phaseDiagramConstruction : Prop
  solidSolutionModel : Prop
  invariantReactions : Prop
  meltSolidInteractions : Prop
  miscibilityGap : Prop
  glassTransition : Prop

structure PhaseEquilibriumEvidence (P : PhaseEquilibriumPackage) where
  gibbsFreeEnergyMinimizationClosed : P.gibbsFreeEnergyMinimization
  phaseDiagramConstructionClosed : P.phaseDiagramConstruction
  solidSolutionModelClosed : P.solidSolutionModel
  invariantReactionsClosed : P.invariantReactions
  meltSolidInteractionsClosed : P.meltSolidInteractions
  miscibilityGapClosed : P.miscibilityGap
  glassTransitionClosed : P.glassTransition

def PhaseEquilibriumClosed (P : PhaseEquilibriumPackage) : Prop :=
  P.gibbsFreeEnergyMinimization ∧ P.phaseDiagramConstruction ∧ P.solidSolutionModel ∧
  P.invariantReactions ∧ P.meltSolidInteractions ∧ P.miscibilityGap ∧ P.glassTransition

theorem phase_equilibrium_closed_from_evidence (P : PhaseEquilibriumPackage)
    (E : PhaseEquilibriumEvidence P) : PhaseEquilibriumClosed P := by
  exact And.intro E.gibbsFreeEnergyMinimizationClosed
    (And.intro E.phaseDiagramConstructionClosed
      (And.intro E.solidSolutionModelClosed
        (And.intro E.invariantReactionsClosed
          (And.intro E.meltSolidInteractionsClosed
            (And.intro E.miscibilityGapClosed E.glassTransitionClosed)))))

end MaterialsCeramicMaterialsLemmaCanonicalLaneLean
end HautevilleHouse