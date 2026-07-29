import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceRemoteSensingGeologyCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.EarthScienceRemoteSensingGeologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

def ConstrainedEarthScienceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_earth_science_endgame (A : AdmissibleClass) :
    ConstrainedEarthScienceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse