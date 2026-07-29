import HautevilleHouse.EarthScienceRemoteSensingGeologyCanonicalLaneLean.GeologicMapUnit

/-!
# Change Detection Package
-/

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure ChangeDetectionPackage where
  temporalImagePair : Type u
  spectralDifferenceMap : temporalImagePair → ℝ
  changeThreshold : ℝ
  changeClassLabel : Prop
  accuracyAssessment : Prop

structure ChangeDetectionEvidence (C : ChangeDetectionPackage) where
  spectralDifferenceMapClosed : ∀ (pair : C.temporalImagePair), C.spectralDifferenceMap pair ≥ 0
  changeClassLabelClosed : C.changeClassLabel
  accuracyAssessmentClosed : C.accuracyAssessment

def ChangeDetectionClosed (C : ChangeDetectionPackage) : Prop :=
  (∀ (pair : C.temporalImagePair), C.spectralDifferenceMap pair ≥ 0) ∧ C.changeClassLabel ∧ C.accuracyAssessment

theorem change_detection_closed_from_evidence (C : ChangeDetectionPackage) (E : ChangeDetectionEvidence C) :
    ChangeDetectionClosed C := by
  exact And.intro E.spectralDifferenceMapClosed (And.intro E.changeClassLabelClosed E.accuracyAssessmentClosed)

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse