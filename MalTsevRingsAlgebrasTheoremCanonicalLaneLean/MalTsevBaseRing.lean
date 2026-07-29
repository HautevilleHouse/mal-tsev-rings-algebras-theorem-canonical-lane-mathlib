import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasTheoremCanonicalLaneLean

structure MalTsevBaseRing where
  carrier : Type u
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  zero : carrier
  one : carrier
  additionAssociative : ∀ a b c : carrier, addition (addition a b) c = addition a (addition b c)
  additionCommutative : ∀ a b : carrier, addition a b = addition b a
  zeroAdd : ∀ a : carrier, addition zero a = a
  addZero : ∀ a : carrier, addition a zero = a
  additiveInverse : carrier → carrier
  addInverse : ∀ a : carrier, addition a (additiveInverse a) = zero
  multiplicationAssociative : ∀ a b c : carrier, multiplication (multiplication a b) c = multiplication a (multiplication b c)
  oneMul : ∀ a : carrier, multiplication one a = a
  mulOne : ∀ a : carrier, multiplication a one = a
  leftDistributive : ∀ a b c : carrier, multiplication a (addition b c) = addition (multiplication a b) (multiplication a c)
  rightDistributive : ∀ a b c : carrier, multiplication (addition a b) c = addition (multiplication a c) (multiplication b c)

end MalTsevRingsAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse