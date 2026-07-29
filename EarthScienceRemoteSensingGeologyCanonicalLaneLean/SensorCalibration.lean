import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure SensorCalibrationPackage where
  spectralResponseFunction : Prop
  radiometricCalibration : Prop
  geometricCalibration : Prop
  temporalStability : Prop

structure SensorCalibrationEvidence (C : SensorCalibrationPackage) where
  spectralResponseFunctionClosed : C.spectralResponseFunction
  radiometricCalibrationClosed : C.radiometricCalibration
  geometricCalibrationClosed : C.geometricCalibration
  temporalStabilityClosed : C.temporalStability

def SensorCalibrationClosed (C : SensorCalibrationPackage) : Prop :=
  C.spectralResponseFunction ∧ C.radiometricCalibration ∧
  C.geometricCalibration ∧ C.temporalStability

theorem sensor_calibration_closed_from_evidence (C : SensorCalibrationPackage)
    (E : SensorCalibrationEvidence C) : SensorCalibrationClosed C := by
  exact And.intro E.spectralResponseFunctionClosed
    (And.intro E.radiometricCalibrationClosed
      (And.intro E.geometricCalibrationClosed E.temporalStabilityClosed))

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse
