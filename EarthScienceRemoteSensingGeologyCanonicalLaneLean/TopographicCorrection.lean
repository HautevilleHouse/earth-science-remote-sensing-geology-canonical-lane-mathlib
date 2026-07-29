import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure TopographicCorrectionPackage where
  digitalElevationModel : Type u
  illuminationGeometry : Prop
  brdfModel : Prop
  correctionMethod : Prop

structure TopographicCorrectionEvidence (T : TopographicCorrectionPackage) where
  illuminationGeometryClosed : T.illuminationGeometry
  brdfModelClosed : T.brdfModel
  correctionMethodClosed : T.correctionMethod

def TopographicCorrectionClosed (T : TopographicCorrectionPackage) : Prop :=
  T.illuminationGeometry ∧ T.brdfModel ∧ T.correctionMethod

theorem topographic_correction_closed_from_evidence (T : TopographicCorrectionPackage)
    (E : TopographicCorrectionEvidence T) : TopographicCorrectionClosed T := by
  exact And.intro E.illuminationGeometryClosed
    (And.intro E.brdfModelClosed E.correctionMethodClosed)

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse
