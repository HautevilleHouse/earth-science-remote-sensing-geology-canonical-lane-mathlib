import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure HyperspectralMineralIdentification where
  imagingSpectrometerData : String
  atmosphericCorrectionApplied : Prop
  spectralMatchAlgorithm : Prop
  mineralMapGenerated : Prop

structure HyperspectralMineralIdentificationEvidence (H : HyperspectralMineralIdentification) where
  atmosphericCorrectionAppliedClosed : H.atmosphericCorrectionApplied
  spectralMatchAlgorithmClosed : H.spectralMatchAlgorithm
  mineralMapGeneratedClosed : H.mineralMapGenerated

def HyperspectralMineralIdentificationClosed (H : HyperspectralMineralIdentification) : Prop :=
  H.atmosphericCorrectionApplied ∧ H.spectralMatchAlgorithm ∧ H.mineralMapGenerated

theorem hyperspectral_mineral_identification_closed_from_evidence
    (H : HyperspectralMineralIdentification) (E : HyperspectralMineralIdentificationEvidence H) :
    HyperspectralMineralIdentificationClosed H := by
  exact And.intro E.atmosphericCorrectionAppliedClosed
    (And.intro E.spectralMatchAlgorithmClosed E.mineralMapGeneratedClosed)

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse
