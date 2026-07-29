import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceRemoteSensingGeologyCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedObjectClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse