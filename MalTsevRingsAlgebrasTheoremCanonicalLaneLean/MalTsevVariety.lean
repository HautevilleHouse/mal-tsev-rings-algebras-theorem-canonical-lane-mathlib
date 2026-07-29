import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasTheoremCanonicalLaneLean

structure MalTsevVariety where
  rings : Set MalTsevRing
  closedUnderSubrings : Prop
  closedUnderHomomorphicImages : Prop
  closedUnderDirectProducts : Prop

structure MalTsevVarietyEvidence (V : MalTsevVariety) where
  closedUnderSubringsClosed : V.closedUnderSubrings
  closedUnderHomomorphicImagesClosed : V.closedUnderHomomorphicImages
  closedUnderDirectProductsClosed : V.closedUnderDirectProducts

def MalTsevVarietyClosed (V : MalTsevVariety) : Prop :=
  V.closedUnderSubrings ∧ V.closedUnderHomomorphicImages ∧ V.closedUnderDirectProducts

theorem mal_tsev_variety_closed_from_evidence (V : MalTsevVariety)
    (E : MalTsevVarietyEvidence V) : MalTsevVarietyClosed V := by
  exact And.intro E.closedUnderSubringsClosed
    (And.intro E.closedUnderHomomorphicImagesClosed E.closedUnderDirectProductsClosed)

end MalTsevRingsAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse