import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure ThermalInfraredPackage where
  thermalData : Prop
  emissivityCorrection : Prop
  temperatureRetrieval : Prop
  geothermalAnomaly : Prop

structure ThermalInfraredEvidence (T : ThermalInfraredPackage) where
  thermalDataClosed : T.thermalData
  emissivityCorrectionClosed : T.emissivityCorrection
  temperatureRetrievalClosed : T.temperatureRetrieval
  geothermalAnomalyClosed : T.geothermalAnomaly

def ThermalInfraredClosed (T : ThermalInfraredPackage) : Prop :=
  T.thermalData ∧ T.emissivityCorrection ∧ T.temperatureRetrieval ∧ T.geothermalAnomaly

theorem thermal_infrared_closed_from_evidence (T : ThermalInfraredPackage) (E : ThermalInfraredEvidence T) :
    ThermalInfraredClosed T := by
  exact And.intro E.thermalDataClosed (And.intro E.emissivityCorrectionClosed (And.intro E.temperatureRetrievalClosed E.geothermalAnomalyClosed))

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse