import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure RadarInterferometryGroundMotionPackage where
  sarImagePair : List String
  interferogramGenerated : Prop
  phaseUnwrappingPerformed : Prop
  displacementMapComputed : Prop
  temporalAnalysis : Prop

structure RadarInterferometryGroundMotionEvidence (R : RadarInterferometryGroundMotionPackage) where
  interferogramGeneratedClosed : R.interferogramGenerated
  phaseUnwrappingPerformedClosed : R.phaseUnwrappingPerformed
  displacementMapComputedClosed : R.displacementMapComputed
  temporalAnalysisClosed : R.temporalAnalysis

def RadarInterferometryGroundMotionClosed (R : RadarInterferometryGroundMotionPackage) : Prop :=
  R.interferogramGenerated ∧ R.phaseUnwrappingPerformed ∧ R.displacementMapComputed ∧ R.temporalAnalysis

theorem radar_interferometry_ground_motion_closed_from_evidence
    (R : RadarInterferometryGroundMotionPackage) (E : RadarInterferometryGroundMotionEvidence R) :
    RadarInterferometryGroundMotionClosed R := by
  exact And.intro E.interferogramGeneratedClosed
    (And.intro E.phaseUnwrappingPerformedClosed
      (And.intro E.displacementMapComputedClosed E.temporalAnalysisClosed))

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse
