import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasTheoremCanonicalLaneLean

structure MalTsevRing where
  carrier : Type
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  associativity : ∀ a b c : carrier, (a * b) * c = a * (b * c)
  malTsevIdentity : ∀ a b : carrier, a * a * b = b

structure MalTsevAdmittedObject where
  ring : MalTsevRing
  isSimple : Prop
  centerTrivial : Prop
  conclusion : isSimple ∧ centerTrivial

def MalTsevWitnessClosed (O : MalTsevAdmittedObject) : Prop :=
  O.isSimple ∧ O.centerTrivial

end MalTsevRingsAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse