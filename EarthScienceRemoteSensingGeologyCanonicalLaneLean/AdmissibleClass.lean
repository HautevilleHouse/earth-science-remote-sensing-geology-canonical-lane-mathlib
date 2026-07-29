import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure EarthScienceAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  remoteSensingGeometry : Prop
  geophysicalConsistency : Prop
  conclusion : remoteSensingGeometry ∧ geophysicalConsistency

structure EarthScienceAdmissibleClass where
  object : EarthScienceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def earthScienceAdmittedClosure (A : EarthScienceAdmissibleClass) : Prop :=
  EarthScienceObjectClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def EarthScienceObjectClosed (O : EarthScienceAdmittedObject) : Prop :=
  O.remoteSensingGeometry ∧ O.geophysicalConsistency

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse