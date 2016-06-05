# Relations & Concepts

A fact is a statement that is True. *Joe Smith lives in New York* could be a fact. In this example, *Joe Smith* could be seen as an instance of a **Person** and *New York* as an instance of **City**. 

We can define the **relation** *lives in* between the **concepts** *Person* and *City* to hold facts about persons living in cities.  


## Example

    RELATION lives[Person*City]
    MEANING "A person can live in a city."

Every relation has a `name`, which is a single word, starting with a lower case character.
The name is followed by the `sign`. The sign holds the source concept and the target concept. 
The `meaning` is optional, and gives the semantics of the relation in natural language. It is a good habit to specify the meaning!

## Properties of relations
In many cases, there can be restrictions on the population of a relation. These restrictions can be specified directly after the sign.

Let's assume that we want to express that any person can only live at one city. ie, *Joe Smith lives in New York* and *Joe Smith lives in Denver* cannot both be true (at the same time). 

In relation algebra, we say that the relation is univalent. (every atom in the source concept can only be paired with a single atom in the target concept). This is modeled as

    RELATION lives[Person*City][UNI]
    MEANING "A person can live in a city."

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
