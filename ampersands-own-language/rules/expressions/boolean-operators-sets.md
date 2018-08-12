# Boolean operators applied to relations

A relation is by definition a subset of the Cartesian Product of the source and target sets. So, if two different relations r and s are defined on the same source A and target B, then the ordinary set operators can be applied to produce a new relation.

* intersection : $$r ∩ s$$ is the set that contains the elements that are contained in relation $$r$$ as well as in $$s$$, or $$r ∩ s\ =\ \{ (x,y)\ |\ (x,y) ∈ r ∧ (x,y) ∈ s \}$$
* union : $$r ∪ s$$ is the set that contains all elements that are contained either in relation $$r$$ or in $$s$$, or $$r ∪ s\ =\ \{ (x,y)\ |\ (x,y) ∈ r ∨ (x,y) ∈ s \}$$
* difference : $$r - s$$ is the set that contains the elements of relation $$r$$ that are not contained in $$s$$, or $$r - s\ =\ \{ (x,y)\ |\ (x,y) ∈ r ∧ (x,y) ∉ s \}$$

The complement \(or negation\) of a relation $$r[A x B$$ can be calculated as the difference from the cartesian product:

* complement : If $$r$$ is defined as $$r_{A\times B}$$, then $$-r$$ is the set of all tuples in the Cartesian product that are not contained in $$r$$. So $$-r = V_{[A\times B]} - r$$

Note that the complement is defined in terms of $$A$$ and $$B$$. So, two relations with the identical population yet a different signature may have different complements.

