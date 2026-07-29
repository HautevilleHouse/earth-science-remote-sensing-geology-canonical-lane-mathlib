import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure SARInterferometryPackage where
  sarImagePair : Type u
  phaseDifference : Type v
  digitalElevationModel : Type w
  coregistration : Prop
  phaseUnwrapping : Prop
  displacementMapping : Prop

structure SARInterferometryEvidence (I : SARInterferometryPackage) where
  coregistrationClosed : I.coregistration
  unwrappingClosed : I.phaseUnwrapping
  displacementClosed : I.displacementMapping

def SARInterferometryClosed (I : SARInterferometryPackage) : Prop :=
  I.coregistration ∧ I.phaseUnwrapping ∧ I.displacementMapping

theorem sar_interferometry_closed_from_evidence (I : SARInterferometryPackage)
    (E : SARInterferometryEvidence I) : SARInterferometryClosed I :=
  And.intro E.coregistrationClosed (And.intro E.unwrappingClosed E.displacementClosed)

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse