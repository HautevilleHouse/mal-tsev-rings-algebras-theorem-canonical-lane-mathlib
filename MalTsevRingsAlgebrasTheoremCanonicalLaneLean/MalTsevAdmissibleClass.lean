import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MalTsevRingsAlgebrasTheoremCanonicalLaneLean.MalTsevIdentity

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasTheoremCanonicalLaneLean

structure MalTsevAdmittedObject where
  ring : MalTsevBaseRing
  malTsevStructure : MalTsevIdentity ring
  malTsevClosed : MalTsevClosed ring malTsevStructure

structure MalTsevAdmissibleClass where
  object : MalTsevAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : MalTsevAdmissibleClass) : Prop :=
  A.object.malTsevClosed ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MalTsevRingsAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse