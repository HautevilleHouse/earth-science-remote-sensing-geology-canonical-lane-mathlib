import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure ThermalInfraredEmissivitySeparation where
  thermalRadianceData : String
  temperatureEmissivitySeparationMethod : Prop
  emissivitySpectraExtracted : Prop
  lithologicDiscrimination : Prop

structure ThermalInfraredEmissivitySeparationEvidence (T : ThermalInfraredEmissivitySeparation) where
  temperatureEmissivitySeparationMethodClosed : T.temperatureEmissivitySeparationMethod
  emissivitySpectraExtractedClosed : T.emissivitySpectraExtracted
  lithologicDiscriminationClosed : T.lithologicDiscrimination

def ThermalInfraredEmissivitySeparationClosed (T : ThermalInfraredEmissivitySeparation) : Prop :=
  T.temperatureEmissivitySeparationMethod ∧ T.emissivitySpectraExtracted ∧ T.lithologicDiscrimination

theorem thermal_infrared_emissivity_separation_closed_from_evidence
    (T : ThermalInfraredEmissivitySeparation) (E : ThermalInfraredEmissivitySeparationEvidence T) :
    ThermalInfraredEmissivitySeparationClosed T := by
  exact And.intro E.temperatureEmissivitySeparationMethodClosed
    (And.intro E.emissivitySpectraExtractedClosed E.lithologicDiscriminationClosed)

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse
