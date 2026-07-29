import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MalTsevRingsAlgebrasTheoremCanonicalLaneLean.MalTsevBaseRing

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasTheoremCanonicalLaneLean

structure MalTsevIdentity (R : MalTsevBaseRing) where
  malTsevOperation : R.carrier → R.carrier → R.carrier
  malTsevIdentities : ∀ x y z : R.carrier,
    malTsevOperation x x = R.zero ∧
    malTsevOperation x R.zero = x ∧
    malTsevOperation x (malTsevOperation y z) =
    R.addition (malTsevOperation x y) (R.addition (malTsevOperation x z) (malTsevOperation R.zero (malTsevOperation y z)))

def MalTsevClosed (R : MalTsevBaseRing) (M : MalTsevIdentity R) : Prop :=
  M.malTsevIdentities (∀ x : R.carrier, x = x)

end MalTsevRingsAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse