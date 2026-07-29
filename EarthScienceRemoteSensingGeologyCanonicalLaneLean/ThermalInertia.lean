import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure ThermalInertiaPackage where
  thermalInfraredData : Type u
  diurnalTemperatureCycle : Type v
  surfaceThermalProperties : Type w
  heatEquationModel : Prop
  thermalConductivity : Prop
  heatCapacity : Prop

structure ThermalInertiaEvidence (T : ThermalInertiaPackage) where
  heatEquationClosed : T.heatEquationModel
  conductivityClosed : T.thermalConductivity
  capacityClosed : T.heatCapacity

def ThermalInertiaClosed (T : ThermalInertiaPackage) : Prop :=
  T.heatEquationModel ∧ T.thermalConductivity ∧ T.heatCapacity

theorem thermal_inertia_closed_from_evidence (T : ThermalInertiaPackage)
    (E : ThermalInertiaEvidence T) : ThermalInertiaClosed T :=
  And.intro E.heatEquationClosed (And.intro E.conductivityClosed E.capacityClosed)

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse