import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasTheoremCanonicalLaneLean

structure MalTsevTheorem where
  ring : MalTsevRing
  simpleImpliesTrivialCenter : Prop
  classification : Prop

def MalTsevTheoremClosed (T : MalTsevTheorem) : Prop :=
  T.simpleImpliesTrivialCenter ∧ T.classification

end MalTsevRingsAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse