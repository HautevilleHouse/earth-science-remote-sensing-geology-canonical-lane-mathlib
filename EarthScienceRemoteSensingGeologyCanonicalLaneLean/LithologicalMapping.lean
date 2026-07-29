import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure LithologicalMappingPackage where
  spectralLibrary : Type u
  mineralIndices : Prop
  machineLearningModel : Prop
  validationData : Prop

structure LithologicalMappingEvidence (L : LithologicalMappingPackage) where
  spectralLibraryClosed : L.spectralLibrary
  mineralIndicesClosed : L.mineralIndices
  machineLearningModelClosed : L.machineLearningModel
  validationDataClosed : L.validationData

def LithologicalMappingClosed (L : LithologicalMappingPackage) : Prop :=
  L.spectralLibrary ∧ L.mineralIndices ∧ L.machineLearningModel ∧ L.validationData

theorem lithological_mapping_closed_from_evidence (L : LithologicalMappingPackage)
    (E : LithologicalMappingEvidence L) : LithologicalMappingClosed L := by
  exact And.intro E.spectralLibraryClosed
    (And.intro E.mineralIndicesClosed
      (And.intro E.machineLearningModelClosed E.validationDataClosed))

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse
