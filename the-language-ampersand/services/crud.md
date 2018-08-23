# CRUD

CRUD annotations are used in services to constrain the functionality of fields and boxes in an `INTERFACE`-statement. This allows you to avoid redundant functionality.

After each expression in an interface you will be able to specify CRUD rights. Capital = allowed, Non-capital = not allowed. When you leave out a letter, the default is used. See #253.

```
INTERFACE "ifc A" : expr CRUD
    BOX [ "label1" : expr cRUd
            , "label2" : expr C
            ]
```

The semantics for CRUD as we're implementing it right now are:

| Operation | Tgt concept ISA Object | Tgt concept ISA Scalar |
| --- | --- | --- |
| C | Create new atom (concept = tgt of expr) and if expr is relation add link (src, new tgt) | **NA** _Warning: Not possible, use update_ |
| R | Read allowed | Read allowed |
| U | Remove and/or add link (tuple src,tgt) from relation using existing tgt atoms. _When expr is not a relation -> Warning: Update not possible_ | Remove and/or add link (tuple src,tgt) from relation. Tgt atom does not have to exists in & (= scalar). _When expr is not a relation -> Warning: Update not possible_ |
| D | Delete atom (tgt) and all links where the atom is the src or tgt | **NA** _Warning: Not possible, use update_ |


A top-level Update or Create are common in my own scripts, e.g. to create an overview of People and be able to create a new Person: `INTERFACE "People" : V[SESSION*Person] CRud COLS []`. And update is also possible.

Keep in mind that the crud rights are about the relation(expression) and not the root atom. In #141 we described the semantics of the CRUD syntax. In short:

CRUD | Tgt concept ISA Object | Tgt concept ISA Scalar
-- | -- | --
C | Be able to add a new link by creating a new atom (concept = tgt of expr). If expr is not a relation, the atom is created, but not the link. Depending on the expression, the newly created atom might appear or not. | NA Warning: Not possible, use update
c | Not allowed to create new tgt atom | NA
R | Read allowed | Read allowed
r | Read not allowed | Read not allowed
U | Add and/or remove link from src atom to existing atoms (concept = tgt of expr). When expr is not a relation -> Warning: Update not possible | Add and/or remove link from src atom to tgt atom. Tgt atom does not have to exists (because it is a scalar). When expr is not a relation -> Warning: Update not possible
u | Add/remove links not allowed | Add/remove links not allowed
D | Remove link by deleting tgt atom. All other links from/to tgt atom are also removed | NA Warning: Not possible, use update
d | Remove link by deleting tgt atom not allowed | NA

