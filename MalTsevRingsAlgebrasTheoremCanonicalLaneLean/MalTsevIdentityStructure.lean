import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasTheoremCanonicalLaneLean

structure MalTsevIdentityAxiom (R : MalTsevRing) where
  leftDistributive : ∀ a b c : R.carrier, a * (b + c) = a * b + a * c
  rightDistributive : ∀ a b c : R.carrier, (a + b) * c = a * c + b * c
  malTsevIdentityHolds : ∀ a b c : R.carrier, (a * b) * c = (a * c) * b
  additiveGroup : AddGroup R.carrier

structure MalTsevIdentityEvidence (R : MalTsevRing) (A : MalTsevIdentityAxiom R) where
  leftDistributiveClosed : A.leftDistributive
  rightDistributiveClosed : A.rightDistributive
  malTsevIdentityHoldsClosed : A.malTsevIdentityHolds
  additiveGroupClosed : A.additiveGroup

def MalTsevIdentityClosed (R : MalTsevRing) (A : MalTsevIdentityAxiom R) : Prop :=
  A.leftDistributive ∧ A.rightDistributive ∧ A.malTsevIdentityHolds ∧ A.additiveGroup

theorem mal_tsev_identity_closed_from_evidence (R : MalTsevRing) (A : MalTsevIdentityAxiom R)
    (E : MalTsevIdentityEvidence R A) : MalTsevIdentityClosed R A := by
  exact And.intro E.leftDistributiveClosed
    (And.intro E.rightDistributiveClosed
      (And.intro E.malTsevIdentityHoldsClosed E.additiveGroupClosed))

end MalTsevRingsAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse