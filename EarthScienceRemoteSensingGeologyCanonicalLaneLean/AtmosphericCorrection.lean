import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure AtmosphericCorrectionPackage where
  surfaceReflectance : Type u
  topOfAtmosphereRadiance : Type v
  radiativeTransferModel : Prop
  atmosphericParameters : Prop
  correctionAlgorithm : Prop

structure AtmosphericCorrectionEvidence (C : AtmosphericCorrectionPackage) where
  radiativeTransferModelClosed : C.radiativeTransferModel
  atmosphericParametersClosed : C.atmosphericParameters
  correctionAlgorithmClosed : C.correctionAlgorithm

def AtmosphericCorrectionClosed (C : AtmosphericCorrectionPackage) : Prop :=
  C.radiativeTransferModel ∧ C.atmosphericParameters ∧ C.correctionAlgorithm

theorem atmospheric_correction_closed_from_evidence (C : AtmosphericCorrectionPackage)
    (E : AtmosphericCorrectionEvidence C) : AtmosphericCorrectionClosed C := by
  exact And.intro E.radiativeTransferModelClosed
    (And.intro E.atmosphericParametersClosed E.correctionAlgorithmClosed)

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse
