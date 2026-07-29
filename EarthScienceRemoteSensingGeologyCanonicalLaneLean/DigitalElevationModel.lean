import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure DigitalElevationModelPackage where
  topographicData : Prop
  interpolationMethod : Prop
  verticalAccuracy : Prop
  drainageNetwork : Prop

structure DigitalElevationModelEvidence (D : DigitalElevationModelPackage) where
  topographicDataClosed : D.topographicData
  interpolationMethodClosed : D.interpolationMethod
  verticalAccuracyClosed : D.verticalAccuracy
  drainageNetworkClosed : D.drainageNetwork

def DigitalElevationModelClosed (D : DigitalElevationModelPackage) : Prop :=
  D.topographicData ∧ D.interpolationMethod ∧ D.verticalAccuracy ∧ D.drainageNetwork

theorem digital_elevation_model_closed_from_evidence (D : DigitalElevationModelPackage) (E : DigitalElevationModelEvidence D) :
    DigitalElevationModelClosed D := by
  exact And.intro E.topographicDataClosed (And.intro E.interpolationMethodClosed (And.intro E.verticalAccuracyClosed E.drainageNetworkClosed))

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse