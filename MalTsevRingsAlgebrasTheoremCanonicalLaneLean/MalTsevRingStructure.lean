import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasTheoremCanonicalLaneLean

structure MalTsevRing where
  carrier : Type u
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  zero : carrier
  addAssoc : ∀ a b c : carrier, add (add a b) c = add a (add b c)
  addComm : ∀ a b : carrier, add a b = add b a
  zeroAdd : ∀ a : carrier, add zero a = a
  addZero : ∀ a : carrier, add a zero = a
  addInv : ∀ a : carrier, ∃ b : carrier, add a b = zero ∧ add b a = zero
  mulAssoc : ∀ a b c : carrier, mul (mul a b) c = mul a (mul b c)
  leftDistrib : ∀ a b c : carrier, mul a (add b c) = add (mul a b) (mul a c)
  rightDistrib : ∀ a b c : carrier, mul (add a b) c = add (mul a c) (mul b c)
  malTsevIdentity : ∀ a b c : carrier, mul (mul a b) c = mul (mul a c) b

structure MalTsevAdmittedObject where
  ring : MalTsevRing
  ringSatisfiesIdentity : ring.malTsevIdentity
  conclusion : ringSatisfiesIdentity

def MalTsevWitnessClosed (O : MalTsevAdmittedObject) : Prop :=
  O.ringSatisfiesIdentity

end MalTsevRingsAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse