import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure GeophysicalInversionPackage where
  forwardOperator : Type u
  observedData : Type v
  initialModel : Type w
  inversionRegularization : Prop
  dataMisfitFunctional : Prop
  modelUpdateRule : Prop

structure GeophysicalInversionEvidence (I : GeophysicalInversionPackage) where
  regularizationClosed : I.inversionRegularization
  misfitFunctionalClosed : I.dataMisfitFunctional
  updateRuleClosed : I.modelUpdateRule

def GeophysicalInversionClosed (I : GeophysicalInversionPackage) : Prop :=
  I.inversionRegularization ∧ I.dataMisfitFunctional ∧ I.modelUpdateRule

theorem geophysical_inversion_closed_from_evidence (I : GeophysicalInversionPackage)
    (E : GeophysicalInversionEvidence I) : GeophysicalInversionClosed I :=
  And.intro E.regularizationClosed (And.intro E.misfitFunctionalClosed E.updateRuleClosed)

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse