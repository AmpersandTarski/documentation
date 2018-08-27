---
description: Why is Ampersand the way it is? This chapter documents the reasons.
---

# Design considerations

## Constraints

An Ampersand context presents itself as a universe with constraints. This was chosen to allow for incremental development. Adding a constraint changes nothing to the semantics of other constraints.

An example of this is found in the CRUD annotations: the functionality of interfaces gives all possibilities and they are constrained by CRUD annotations.

