import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure PlanetarySatelliteAtmosphereModels where
  targetBody : String
  surfacePressure : Float
  atmosphericComposition : List String
  radiativeTransferModel : Prop
  spectralSignature : String
  evidenceChain : Prop

structure PlanetarySatelliteAtmosphereEvidence (P : PlanetarySatelliteAtmosphereModels) where
  radiativeTransferModelClosed : P.radiativeTransferModel
  evidenceChainClosed : P.evidenceChain

def PlanetarySatelliteAtmosphereClosed (P : PlanetarySatelliteAtmosphereModels) : Prop :=
  P.radiativeTransferModel ∧ P.evidenceChain

theorem planetary_satellite_atmosphere_closed_from_evidence
    (P : PlanetarySatelliteAtmosphereModels) (E : PlanetarySatelliteAtmosphereEvidence P) :
    PlanetarySatelliteAtmosphereClosed P := by
  exact And.intro E.radiativeTransferModelClosed E.evidenceChainClosed

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse
