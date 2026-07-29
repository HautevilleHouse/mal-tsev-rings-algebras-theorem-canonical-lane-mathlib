import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasTheoremCanonicalLaneLean

structure PolynomialIdentity where
  ring : MalTsevRing
  identity : ∀ a b c : ring.carrier, ring.mul (ring.mul a b) c = ring.mul (ring.mul a c) b
  identityHolds : identity

def PolynomialIdentityClosed (P : PolynomialIdentity) : Prop :=
  P.identityHolds

theorem polynomial_identity_closed (P : PolynomialIdentity) :
    PolynomialIdentityClosed P := by
  exact P.identityHolds

end MalTsevRingsAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse