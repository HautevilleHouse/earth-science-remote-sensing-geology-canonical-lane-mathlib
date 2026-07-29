import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure SpectralImagingPackage where
  sensorType : Type
  spectralBands : Nat
  spatialResolution : Float
  temporalCoverage : String
  calibrationData : Prop
  atmosphericCorrection : Prop
  cloudMasking : Prop

structure SpectralImagingEvidence (S : SpectralImagingPackage) where
  calibrationDataClosed : S.calibrationData
  atmosphericCorrectionClosed : S.atmosphericCorrection
  cloudMaskingClosed : S.cloudMasking

def SpectralImagingClosed (S : SpectralImagingPackage) : Prop :=
  S.calibrationData ∧ S.atmosphericCorrection ∧ S.cloudMasking

theorem spectral_imaging_closed_from_evidence (S : SpectralImagingPackage) (E : SpectralImagingEvidence S) :
    SpectralImagingClosed S := by
  exact And.intro E.calibrationDataClosed (And.intro E.atmosphericCorrectionClosed E.cloudMaskingClosed)

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse