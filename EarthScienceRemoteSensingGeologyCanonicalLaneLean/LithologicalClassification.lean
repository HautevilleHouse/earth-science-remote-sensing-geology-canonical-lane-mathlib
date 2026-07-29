import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure LithologicalClassificationPackage where
  spectralBands : Type u
  trainingPixels : Type v
  rockTypes : Type w
  supervisedClassifier : Prop
  featureSelection : Prop
  accuracyAssessment : Prop

structure LithologicalClassificationEvidence (L : LithologicalClassificationPackage) where
  classifierClosed : L.supervisedClassifier
  featuresClosed : L.featureSelection
  accuracyClosed : L.accuracyAssessment

def LithologicalClassificationClosed (L : LithologicalClassificationPackage) : Prop :=
  L.supervisedClassifier ∧ L.featureSelection ∧ L.accuracyAssessment

theorem lithological_classification_closed_from_evidence (L : LithologicalClassificationPackage)
    (E : LithologicalClassificationEvidence L) : LithologicalClassificationClosed L :=
  And.intro E.classifierClosed (And.intro E.featuresClosed E.accuracyClosed)

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse