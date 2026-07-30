import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsLemmaCanonicalLaneLean

structure SinteringModel where
  grainBoundaryDiffusion : Type u
  poreEliminationRates : Prop
  densificationProven : Prop
  microstructureEvolutionPredicted : Prop

structure SinteringModelEvidence (S : SinteringModel) where
  poreEliminationRatesClosed : S.poreEliminationRates
  densificationProvenClosed : S.densificationProven
  microstructureEvolutionPredictedClosed : S.microstructureEvolutionPredicted

def SinteringModelClosed (S : SinteringModel) : Prop :=
  S.poreEliminationRates ∧ S.densificationProven ∧ S.microstructureEvolutionPredicted

theorem sintering_model_closed_from_evidence (S : SinteringModel)
    (E : SinteringModelEvidence S) : SinteringModelClosed S :=
  And.intro E.poreEliminationRatesClosed
    (And.intro E.densificationProvenClosed E.microstructureEvolutionPredictedClosed)

end MaterialsCeramicMaterialsLemmaCanonicalLaneLean
end HautevilleHouse