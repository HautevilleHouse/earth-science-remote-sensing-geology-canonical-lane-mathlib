import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure GeologicalFeatureExtractionPackage where
  lithologyMapping : Prop
  structuralGeology : Prop
  mineralAlteration : Prop
  lineamentDetection : Prop

structure GeologicalFeatureExtractionEvidence (G : GeologicalFeatureExtractionPackage) where
  lithologyMappingClosed : G.lithologyMapping
  structuralGeologyClosed : G.structuralGeology
  mineralAlterationClosed : G.mineralAlteration
  lineamentDetectionClosed : G.lineamentDetection

def GeologicalFeatureExtractionClosed (G : GeologicalFeatureExtractionPackage) : Prop :=
  G.lithologyMapping ∧ G.structuralGeology ∧ G.mineralAlteration ∧ G.lineamentDetection

theorem geological_feature_extraction_closed_from_evidence (G : GeologicalFeatureExtractionPackage) (E : GeologicalFeatureExtractionEvidence G) :
    GeologicalFeatureExtractionClosed G := by
  exact And.intro E.lithologyMappingClosed (And.intro E.structuralGeologyClosed (And.intro E.mineralAlterationClosed E.lineamentDetectionClosed))

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse