import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasTheoremCanonicalLaneLean

structure MalTsevStructure where
  ring : MalTsevRing
  derivation : carrier → carrier
  derivationLinear : ∀ a b, derivation (a + b) = derivation a + derivation b
  derivationProduct : ∀ a b, derivation (a * b) = derivation a * b + a * derivation b

def MalTsevStructureClosed (S : MalTsevStructure) : Prop :=
  S.derivationLinear ∧ S.derivationProduct

end MalTsevRingsAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse