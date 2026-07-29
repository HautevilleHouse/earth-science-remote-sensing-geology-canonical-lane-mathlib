import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure EarthScienceAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  remoteSensingData : Prop
  geologicalInterpretation : Prop
  conclusion : remoteSensingData ∧ geologicalInterpretation

def EarthScienceWitnessClosed (O : EarthScienceAdmittedObject) : Prop :=
  O.remoteSensingData ∧ O.geologicalInterpretation

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse