import HautevilleHouse.EarthScienceRemoteSensingGeologyCanonicalLaneLean.RadiometricCorrection

/-!
# Geologic Map Unit Package
-/

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure GeologicMapUnitPackage where
  lithologyClass : Prop
  alterationMineralogy : Prop
  structuralFeature : Prop
  surfaceMorphology : Prop
  ageRelation : Prop

structure GeologicMapUnitEvidence (G : GeologicMapUnitPackage) where
  lithologyClassClosed : G.lithologyClass
  alterationMineralogyClosed : G.alterationMineralogy
  structuralFeatureClosed : G.structuralFeature
  surfaceMorphologyClosed : G.surfaceMorphology
  ageRelationClosed : G.ageRelation

def GeologicMapUnitClosed (G : GeologicMapUnitPackage) : Prop :=
  G.lithologyClass ∧ G.alterationMineralogy ∧ G.structuralFeature ∧ G.surfaceMorphology ∧ G.ageRelation

theorem geologic_map_unit_closed_from_evidence (G : GeologicMapUnitPackage) (E : GeologicMapUnitEvidence G) :
    GeologicMapUnitClosed G := by
  exact And.intro E.lithologyClassClosed
    (And.intro E.alterationMineralogyClosed
      (And.intro E.structuralFeatureClosed
        (And.intro E.surfaceMorphologyClosed E.ageRelationClosed)))

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse