import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasTheoremCanonicalLaneLean

structure MalTsevRing where
  carrier : Type
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  malTsevIdentity : ∀ a b c : carrier, (a * b) * c = (a * c) * b

structure MalTsevAdmittedObject where
  ring : MalTsevRing
  satisfiesMalTsevIdentity : Prop
  conclusion : satisfiesMalTsevIdentity

def MalTsevAdmissibleClass (A : MalTsevAdmittedObject) : Prop :=
  A.satisfiesMalTsevIdentity

end MalTsevRingsAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse