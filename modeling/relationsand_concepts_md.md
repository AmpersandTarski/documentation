# Relations & Concepts

A fact is a statement that is True. *Joe Smith lives in New York* could be a fact. In this example, *Joe Smith* could be seen as an instance of *a Person* and *New York* as an instance of *a City*. The following Ampersand terminology applies here:
* *Person* and *City* are **concepts**
* *Joe Smith* is an **atom** of the concept *Person*
* *lives in* is the **relation name** of a **relation** with the **sign** [Person, City] 

## Properties of relations
In many cases, there can be restrictions on the population of a relation. These restrictions can be specified directly after the sign or as a rule.

The following properties can be specified on any relation `r[A*B]`

| & | property | semantics |
| -- | -- | -- |
| UNI | univalent | For any `a` in `A` there can only be one `b` in `B` in the population of `r`. | 
| INJ | injective | For any `b` in `B` there can only be one `a` in `A` in the population of `r`. | 
| SUR | surjective | For any `b` in `B` there must be (at least) one `a` in `A` in the population of 'r`. | 
| TOT | total | For any `a` in `A` there must be (at least) one `b` in `B` in the population of 'r`. | 

There are additional relations that can be specified on endo relations. An endo relation is a relation where the source and target concepts are equal. `r[A*A]`.

| & | property | semantics |
| -- | -- | -- |
| SYM | symmetric | For each (`a`,`b`) in `r`, (`b`,`a`) is in `r`.| 
| ASY | antisymmetric | If (`a`,`b`) and (`b`,`a`) are both in `r`, then `a` = `b` | 
| TRN | transitive | If (`a`,`b`) and (`b`,`c`) are both in `r`, then (`a`,`c`) is in `r`. | 
| RFX | reflexive | For each `a` in `A`, the pair (`a`,`a`) is in the population of `r`  | 
| IRF | irreflexive | For each `a` in `A`, the pair (`a`,`a`) is *not* in the population of `r` | 
| PROP | - | shortcut for the combination of symmetric and antisymmetric.| 
