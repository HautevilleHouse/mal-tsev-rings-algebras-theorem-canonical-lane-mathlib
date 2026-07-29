import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MalTsevRingsAlgebrasTheoremCanonicalLaneLean.MalTsevAdmissibleClass

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasTheoremCanonicalLaneLean

def bridgeClosed (A : MalTsevAdmissibleClass) : Prop :=
  A.object.malTsevClosed

theorem bridge_from_admissible_class (A : MalTsevAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.malTsevClosed

end MalTsevRingsAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse