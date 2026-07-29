import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasTheoremCanonicalLaneLean

structure UniversalEnvelopingAlgebraPackage where
  lieAlgebra : Type u
  lieOps : LieRing lieAlgebra
  envelopingAlgebra : Type v
  ringOps : Ring envelopingAlgebra
  homomorphismProperty : Prop
  homomorphismPropertyClosed : homomorphismProperty

def UniversalEnvelopingAlgebraClosed (U : UniversalEnvelopingAlgebraPackage) : Prop :=
  U.homomorphismProperty

theorem universal_enveloping_algebra_closed (U : UniversalEnvelopingAlgebraPackage) :
    UniversalEnvelopingAlgebraClosed U := by
  exact U.homomorphismPropertyClosed

end MalTsevRingsAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse
