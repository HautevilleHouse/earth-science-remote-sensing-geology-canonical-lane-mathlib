import HautevilleHouse.EarthScienceRemoteSensingGeologyCanonicalLaneLean.AdmissibleClass

/-!
# Spectral Signature Model Package
-/

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure SpectralSignaturePackage where
  wavelengthBand : Type u
  reflectanceCurve : wavelengthBand → ℝ
  mineralComposition : Prop
  absorptionFeatProp : Prop
  spectralLibraryEntry : Prop

structure SpectralSignatureEvidence (S : SpectralSignaturePackage) where
  mineralCompositionClosed : S.mineralComposition
  absorptionFeatPropClosed : S.absorptionFeatProp
  spectralLibraryEntryClosed : S.spectralLibraryEntry

def SpectralSignatureClosed (S : SpectralSignaturePackage) : Prop :=
  S.mineralComposition ∧ S.absorptionFeatProp ∧ S.spectralLibraryEntry

theorem spectral_signature_closed_from_evidence (S : SpectralSignaturePackage) (E : SpectralSignatureEvidence S) :
    SpectralSignatureClosed S := by
  exact And.intro E.mineralCompositionClosed (And.intro E.absorptionFeatPropClosed E.spectralLibraryEntryClosed)

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse