import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure RadarInterferometryPackage where
  sarData : Prop
  phaseUnwrapping : Prop
  deformationTimeSeries : Prop
  groundSubsidence : Prop

structure RadarInterferometryEvidence (R : RadarInterferometryPackage) where
  sarDataClosed : R.sarData
  phaseUnwrappingClosed : R.phaseUnwrapping
  deformationTimeSeriesClosed : R.deformationTimeSeries
  groundSubsidenceClosed : R.groundSubsidence

def RadarInterferometryClosed (R : RadarInterferometryPackage) : Prop :=
  R.sarData ∧ R.phaseUnwrapping ∧ R.deformationTimeSeries ∧ R.groundSubsidence

theorem radar_interferometry_closed_from_evidence (R : RadarInterferometryPackage) (E : RadarInterferometryEvidence R) :
    RadarInterferometryClosed R := by
  exact And.intro E.sarDataClosed (And.intro E.phaseUnwrappingClosed (And.intro E.deformationTimeSeriesClosed E.groundSubsidenceClosed))

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse