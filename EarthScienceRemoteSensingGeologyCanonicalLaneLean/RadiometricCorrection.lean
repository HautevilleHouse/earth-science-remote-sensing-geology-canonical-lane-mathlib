import HautevilleHouse.EarthScienceRemoteSensingGeologyCanonicalLaneLean.SpectralSignatureModel

/-!
# Radiometric Correction Package
-/

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure RadiometricCorrectionPackage where
  atmosphericCorrection : Prop
  topographicCorrection : Prop
  calibrationTarget : Prop
  brdfCorrection : Prop
  radianceToReflectance : Prop

structure RadiometricCorrectionEvidence (R : RadiometricCorrectionPackage) where
  atmosphericCorrectionClosed : R.atmosphericCorrection
  topographicCorrectionClosed : R.topographicCorrection
  calibrationTargetClosed : R.calibrationTarget
  brdfCorrectionClosed : R.brdfCorrection
  radianceToReflectanceClosed : R.radianceToReflectance

def RadiometricCorrectionClosed (R : RadiometricCorrectionPackage) : Prop :=
  R.atmosphericCorrection ∧ R.topographicCorrection ∧ R.calibrationTarget ∧ R.brdfCorrection ∧ R.radianceToReflectance

theorem radiometric_correction_closed_from_evidence (R : RadiometricCorrectionPackage) (E : RadiometricCorrectionEvidence R) :
    RadiometricCorrectionClosed R := by
  exact And.intro E.atmosphericCorrectionClosed
    (And.intro E.topographicCorrectionClosed
      (And.intro E.calibrationTargetClosed
        (And.intro E.brdfCorrectionClosed E.radianceToReflectanceClosed)))

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse