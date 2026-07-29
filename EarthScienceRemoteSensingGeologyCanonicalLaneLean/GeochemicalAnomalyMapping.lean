import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure GeochemicalAnomalyPackage where
  spectralSignature : Type
  geochemicalModel : Type
  anomalySignatureIsolated : Prop
  spatialAnomalyMapped : Prop

structure GeochemicalAnomalyEvidence (P : GeochemicalAnomalyPackage) where
  anomalySignatureIsolatedClosed : P.anomalySignatureIsolated
  spatialAnomalyMappedClosed : P.spatialAnomalyMapped

def GeochemicalAnomalyClosed (P : GeochemicalAnomalyPackage) : Prop :=
  P.anomalySignatureIsolated ∧ P.spatialAnomalyMapped

theorem geochemical_anomaly_closed_from_evidence (P : GeochemicalAnomalyPackage) (E : GeochemicalAnomalyEvidence P) :
    GeochemicalAnomalyClosed P := by
  exact And.intro E.anomalySignatureIsolatedClosed E.spatialAnomalyMappedClosed

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse