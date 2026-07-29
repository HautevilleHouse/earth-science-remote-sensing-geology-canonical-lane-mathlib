import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure RadiativeTransferPackage where
  atmosphericModel : Type u
  surfaceReflectance : Type v
  solarIllumination : Type w
  multipleScattering : Prop
  absorptionCoefficient : Prop
  radiativeTransferEquation : Prop

structure RadiativeTransferEvidence (R : RadiativeTransferPackage) where
  scatteringClosed : R.multipleScattering
  absorptionClosed : R.absorptionCoefficient
  equationClosed : R.radiativeTransferEquation

def RadiativeTransferClosed (R : RadiativeTransferPackage) : Prop :=
  R.multipleScattering ∧ R.absorptionCoefficient ∧ R.radiativeTransferEquation

theorem radiative_transfer_closed_from_evidence (R : RadiativeTransferPackage)
    (E : RadiativeTransferEvidence R) : RadiativeTransferClosed R :=
  And.intro E.scatteringClosed (And.intro E.absorptionClosed E.equationClosed)

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse