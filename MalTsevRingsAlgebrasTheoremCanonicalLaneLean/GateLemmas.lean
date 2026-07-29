import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MalTsevRingsAlgebrasTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasTheoremCanonicalLaneLean

def gateClosed (A : MalTsevAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : MalTsevAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end MalTsevRingsAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse