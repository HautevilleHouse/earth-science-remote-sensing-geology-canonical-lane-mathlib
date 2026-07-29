import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure GeomorphicProcessRateExtraction where
  changeDetectionMethod : Prop
  temporalSeriesData : List String
  erosionRateModel : Prop
  processRateDerived : Prop

structure GeomorphicProcessRateExtractionEvidence (G : GeomorphicProcessRateExtraction) where
  changeDetectionMethodClosed : G.changeDetectionMethod
  erosionRateModelClosed : G.erosionRateModel
  processRateDerivedClosed : G.processRateDerived

def GeomorphicProcessRateExtractionClosed (G : GeomorphicProcessRateExtraction) : Prop :=
  G.changeDetectionMethod ∧ G.erosionRateModel ∧ G.processRateDerived

theorem geomorphic_process_rate_extraction_closed_from_evidence
    (G : GeomorphicProcessRateExtraction) (E : GeomorphicProcessRateExtractionEvidence G) :
    GeomorphicProcessRateExtractionClosed G := by
  exact And.intro E.changeDetectionMethodClosed
    (And.intro E.erosionRateModelClosed E.processRateDerivedClosed)

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse
