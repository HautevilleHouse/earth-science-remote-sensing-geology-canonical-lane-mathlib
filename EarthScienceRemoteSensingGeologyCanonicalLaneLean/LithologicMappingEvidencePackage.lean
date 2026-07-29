import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure LithologicMappingEvidencePackage where
  spectralUnmixingModel : Prop
  mineralEndmembers : List String
  validationFieldData : Bool
  mappingAccuracy : Float
  evidenceCoverage : Prop

structure LithologicMappingEvidence (L : LithologicMappingEvidencePackage) where
  spectralUnmixingModelClosed : L.spectralUnmixingModel
  evidenceCoverageClosed : L.evidenceCoverage

def LithologicMappingClosed (L : LithologicMappingEvidencePackage) : Prop :=
  L.spectralUnmixingModel ∧ L.evidenceCoverage

theorem lithologic_mapping_closed_from_evidence
    (L : LithologicMappingEvidencePackage) (E : LithologicMappingEvidence L) :
    LithologicMappingClosed L := by
  exact And.intro E.spectralUnmixingModelClosed E.evidenceCoverageClosed

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse
