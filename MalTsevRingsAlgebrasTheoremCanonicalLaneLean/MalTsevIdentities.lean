import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasTheoremCanonicalLaneLean

structure MalTsevIdentitiesPackage where
  ringType : Type u
  ringOps : Ring ringType
  identity1 : Prop
  identity2 : Prop
  identity3 : Prop
  identitiesClosed : identity1 ∧ identity2 ∧ identity3

structure MalTsevIdentitiesEvidence (M : MalTsevIdentitiesPackage) where
  identity1Closed : M.identity1
  identity2Closed : M.identity2
  identity3Closed : M.identity3

def MalTsevIdentitiesClosed (M : MalTsevIdentitiesPackage) : Prop :=
  M.identity1 ∧ M.identity2 ∧ M.identity3

theorem mal_tsev_identities_closed_from_evidence (M : MalTsevIdentitiesPackage)
    (E : MalTsevIdentitiesEvidence M) : MalTsevIdentitiesClosed M := by
  exact And.intro E.identity1Closed (And.intro E.identity2Closed E.identity3Closed)

end MalTsevRingsAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse
