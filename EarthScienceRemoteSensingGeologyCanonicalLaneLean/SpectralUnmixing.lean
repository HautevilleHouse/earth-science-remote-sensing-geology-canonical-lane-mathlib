import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceRemoteSensingGeologyCanonicalLaneLean

structure SpectralUnmixingPackage where
  endmemberLibrary : Type
  mixtureModel : Type
  fractionalAbundancesResolved : Prop
  subpixelClassificationValid : Prop

structure SpectralUnmixingEvidence (P : SpectralUnmixingPackage) where
  fractionalAbundancesResolvedClosed : P.fractionalAbundancesResolved
  subpixelClassificationValidClosed : P.subpixelClassificationValid

def SpectralUnmixingClosed (P : SpectralUnmixingPackage) : Prop :=
  P.fractionalAbundancesResolved ∧ P.subpixelClassificationValid

theorem spectral_unmixing_closed_from_evidence (P : SpectralUnmixingPackage) (E : SpectralUnmixingEvidence P) :
    SpectralUnmixingClosed P := by
  exact And.intro E.fractionalAbundancesResolvedClosed E.subpixelClassificationValidClosed

end EarthScienceRemoteSensingGeologyCanonicalLaneLean
end HautevilleHouse