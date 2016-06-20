# The RELATION statement

## Syntax
There are two ways that a relation can be defined:

```
RELATION <lower case identifier> Concept * Concept Properties? ('PRAGMA' String+)? Meaning* ('=' Content)?
```
  
```
<lower case identifier> '::' Concept * Concept Properties? ('PRAGMA' String+)? Meaning* ('=' Content)?
```
## Semantics
Both ways define a relation by its name, its source concept and target concept. The name of any relation must start with a lower case character. 

### Properties
The properties of a relation may be defined as a comma separated list (in between brackets `[` `]`) of the following keywords:
* `UNI` (univalent)
* `INJ` (injective)
* `SUR` (surjective)
* `TOT` (total)
* `SYM` (symmetrical)
* `ASY` (anti symmetrical)
* `TRN` (transitive)
* `RFX` (reflexive)
* `IRF` (irreflexive)
* `PROP` (property)

Let's assume that we want to express that any person can only live in one city. ie, *Joe Smith lives in New York* and *Joe Smith lives in Denver* cannot both be true at the same time. 

In relation algebra, we say that the relation is univalent, which means that every atom in the source concept can only be paired with a single atom in the target concept. This is modeled as

    RELATION lives[Person*City][UNI]
    MEANING "A person can live in a city."


### PRAGMA
The optional PRAGMA keyword is followed by a couple of strings, that can be used to construct a sentence for this relation that will be printed as example in the functional specification. The sentence will be based on the actual population.
The source and the target of the relation are represented with two double quotes with no text between them. The first one will be filled with the source atom, the second with the target atom. These can be place around, before or after the text enclosed with quotes. 

```
PRAGMA "" " lives in " ""
```

### MEANING

The meaning of a relation can be written in natural language in the MEANING part of the RELATION statement. For more details see [MEANING](meaning.md).


### Population
You can define an initial population for the relation. This is still in the syntax for historical reasons. Today it is more common to define your population in .xlsx files. 


