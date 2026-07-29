import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasTheoremCanonicalLaneLean

structure VarietalClosurePackage where
  closedUnderProducts : Prop
  closedUnderHomomorphicImages : Prop
  closedUnderSubalgebras : Prop
  varietyGenerated : Prop

structure VarietalClosureEvidence (V : VarietalClosurePackage) where
  closedUnderProductsClosed : V.closedUnderProducts
  closedUnderHomomorphicImagesClosed : V.closedUnderHomomorphicImages
  closedUnderSubalgebrasClosed : V.closedUnderSubalgebras
  varietyGeneratedClosed : V.varietyGenerated

def VarietalClosureClosed (V : VarietalClosurePackage) : Prop :=
  V.closedUnderProducts ∧ V.closedUnderHomomorphicImages ∧ V.closedUnderSubalgebras ∧ V.varietyGenerated

theorem varietal_closure_closed_from_evidence (V : VarietalClosurePackage) (E : VarietalClosureEvidence V) :
    VarietalClosureClosed V := by
  exact And.intro E.closedUnderProductsClosed
    (And.intro E.closedUnderHomomorphicImagesClosed
      (And.intro E.closedUnderSubalgebrasClosed E.varietyGeneratedClosed))

end MalTsevRingsAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse