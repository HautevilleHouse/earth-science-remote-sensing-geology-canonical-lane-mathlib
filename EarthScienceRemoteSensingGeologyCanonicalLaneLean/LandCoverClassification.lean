import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure LandCoverClassificationPackage where
  trainingData : Prop
  classifierModel : Prop
  accuracyAssessment : Prop
  changeDetection : Prop

structure LandCoverClassificationEvidence (L : LandCoverClassificationPackage) where
  trainingDataClosed : L.trainingData
  classifierModelClosed : L.classifierModel
  accuracyAssessmentClosed : L.accuracyAssessment
  changeDetectionClosed : L.changeDetection

def LandCoverClassificationClosed (L : LandCoverClassificationPackage) : Prop :=
  L.trainingData ∧ L.classifierModel ∧ L.accuracyAssessment ∧ L.changeDetection

theorem land_cover_classification_closed_from_evidence (L : LandCoverClassificationPackage) (E : LandCoverClassificationEvidence L) :
    LandCoverClassificationClosed L := by
  exact And.intro E.trainingDataClosed (And.intro E.classifierModelClosed (And.intro E.accuracyAssessmentClosed E.changeDetectionClosed))

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse