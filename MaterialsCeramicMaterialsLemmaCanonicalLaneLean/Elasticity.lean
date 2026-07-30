import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsLemmaCanonicalLaneLean

structure ElasticityPackage where
  elasticModuli : Type
  youngsModulus : Prop
  poissonRatio : Prop
  shearModulus : Prop
  bulkModulus : Prop
  anisotropicFactors : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  youngsModulusClosed : E.youngsModulus
  poissonRatioClosed : E.poissonRatio
  shearModulusClosed : E.shearModulus
  bulkModulusClosed : E.bulkModulus
  anisotropicFactorsClosed : E.anisotropicFactors

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.youngsModulus ∧ E.poissonRatio ∧ E.shearModulus ∧
  E.bulkModulus ∧ E.anisotropicFactors

theorem elasticity_closed_from_evidence (E : ElasticityPackage)
    (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.youngsModulusClosed
    (And.intro Ev.poissonRatioClosed
      (And.intro Ev.shearModulusClosed
        (And.intro Ev.bulkModulusClosed Ev.anisotropicFactorsClosed)))

end MaterialsCeramicMaterialsLemmaCanonicalLaneLean
end HautevilleHouse