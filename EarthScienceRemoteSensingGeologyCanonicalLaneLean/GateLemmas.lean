import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceRemoteSensingGeologyCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse