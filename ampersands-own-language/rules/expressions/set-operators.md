# Set operators applied to relations

A relation is by definition a subset of the Cartesian Product of the source and target sets. So, if two different relations r and s are defined on the same source A and target B, then the ordinary set operators can be applied to produce a new relation.

* intersection : r ∩ s is the set that contains the elements that are contained in relation r as well as in s, or r ∩ s = { \(x,y\) \| \(x,y\) ∈ r • \(x,y\) ∈ s }
* union : r ∪ s is the set that contains all elements that are contained either in relation r or in s, or r ∪ s = { \(x,y\) \| \(x,y\) ∈ r • \(x,y\) ∈ s }
* difference : r - s is the set that contains the elements of relation r that are not contained in s, or r - s = { \(x,y\) \| \(x,y\) ∈ r • ¬ \(x,y\) ∈ s }

Figure B11. Intersection, Union and Difference of two relations defined on the same Cartesian Product

The complement \(or negation\) of a relation r\[A x B\] can be calculated as the difference from the cartesian product:

* complement : -r or rc or r is the set of all tuples in the Cartesian

  Product that are not contained in r. So -r\[A x B\] = V\[A x B\] - r\[A x B\]

Note that the complement is defined in terms of A and B. So, two relations with the identical population yet a different signature may have different complements.

