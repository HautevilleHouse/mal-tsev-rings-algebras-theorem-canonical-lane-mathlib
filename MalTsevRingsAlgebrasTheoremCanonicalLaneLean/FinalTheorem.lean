import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MalTsevRingsAlgebrasTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasTheoremCanonicalLaneLean

def ConstrainedMalTsevClosure (A : MalTsevAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mal_tsev_endgame (A : MalTsevAdmissibleClass) :
    ConstrainedMalTsevClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MalTsevRingsAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse