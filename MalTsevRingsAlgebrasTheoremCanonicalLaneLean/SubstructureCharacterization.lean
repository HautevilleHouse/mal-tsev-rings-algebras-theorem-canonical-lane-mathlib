import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasTheoremCanonicalLaneLean

structure SubMalTsevRing (R : MalTsevRing) where
  subCarrier : Set R.carrier
  addClosed : ∀ a b, a ∈ subCarrier → b ∈ subCarrier → a + b ∈ subCarrier
  mulClosed : ∀ a b, a ∈ subCarrier → b ∈ subCarrier → a * b ∈ subCarrier
  additiveSubgroup : AddSubgroup R.carrier

structure SubMalTsevRingEvidence (R : MalTsevRing) (S : SubMalTsevRing R) where
  addClosedClosed : S.addClosed
  mulClosedClosed : S.mulClosed
  additiveSubgroupClosed : S.additiveSubgroup

def SubMalTsevRingClosed (R : MalTsevRing) (S : SubMalTsevRing R) : Prop :=
  S.addClosed ∧ S.mulClosed ∧ S.additiveSubgroup

theorem sub_mal_tsev_ring_closed_from_evidence (R : MalTsevRing) (S : SubMalTsevRing R)
    (E : SubMalTsevRingEvidence R S) : SubMalTsevRingClosed R S := by
  exact And.intro E.addClosedClosed (And.intro E.mulClosedClosed E.additiveSubgroupClosed)

end MalTsevRingsAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse