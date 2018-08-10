# Set operations applied to relations
A relation is by definition a subset of the Cartesian Product of the
source and target sets. Hence, if two different relations r and s are
defined on the same source X and target Y, then the ordinary set
operators can be applied to produce a new subset of the Cartesian
Product, i.e. a new relation. But remember, if the two relations are not
on the same Cartesian Product, then the two relations are disjunct and
the set operations will not produce interesting results.

-   intersection : r ∩ s is the set that contains the elements that are
    contained in relation r as well as in s, or r ∩ s = { (x,y) | (x,y)
    ∈ r  (x,y) ∈ s }

-   union : r ∪ s is the set that contains all elements that are
    contained either in relation r or in s, or r ∪ s = { (x,y) | (x,y) ∈
    r  (x,y) ∈ s }

-   difference : r / s is the set that contains the elements of relation
    r that are not contained in s, or r / s = { (x,y) | (x,y) ∈ r  ¬
    (x,y) ∈ s }

Figure B11. Intersection, Union and Difference of two relations defined
on the same Cartesian Product

The complement (or negation) of a relation can also be easily
calculated. This is because the enveloping set, which is required for
the complement operation on arbitrary sets, comes quite naturally for
relations: the Cartesian Product serves the purpose.

-   complement : -r or rc or r is the set of all tuples in the Cartesian
    Product that are not contained in r.

