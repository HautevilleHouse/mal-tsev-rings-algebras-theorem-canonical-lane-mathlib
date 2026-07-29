import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasTheoremCanonicalLaneLean

structure MalTsevDecomposition where
  ring : MalTsevRing
  ideals : List (Set carrier)
  sumDirect : Prop
  eachSimple : Prop

def MalTsevDecompositionClosed (D : MalTsevDecomposition) : Prop :=
  D.sumDirect ∧ D.eachSimple

end MalTsevRingsAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse