import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure GeophysicalInversionJointModel where
  forwardModel : Prop
  inversionAlgorithm : Prop
  dataFidelityTerm : Prop
  regularizationAdded : Prop
  subsurfaceModelEstimated : Prop

structure GeophysicalInversionJointModelEvidence (G : GeophysicalInversionJointModel) where
  forwardModelClosed : G.forwardModel
  inversionAlgorithmClosed : G.inversionAlgorithm
  dataFidelityTermClosed : G.dataFidelityTerm
  regularizationAddedClosed : G.regularizationAdded
  subsurfaceModelEstimatedClosed : G.subsurfaceModelEstimated

def GeophysicalInversionJointModelClosed (G : GeophysicalInversionJointModel) : Prop :=
  G.forwardModel ∧ G.inversionAlgorithm ∧ G.dataFidelityTerm ∧ G.regularizationAdded ∧ G.subsurfaceModelEstimated

theorem geophysical_inversion_joint_model_closed_from_evidence
    (G : GeophysicalInversionJointModel) (E : GeophysicalInversionJointModelEvidence G) :
    GeophysicalInversionJointModelClosed G := by
  exact And.intro E.forwardModelClosed
    (And.intro E.inversionAlgorithmClosed
      (And.intro E.dataFidelityTermClosed
        (And.intro E.regularizationAddedClosed E.subsurfaceModelEstimatedClosed)))

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse
