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

### Pragma
The optional PRAGMA keyword is followd by a couple of strings, that can be used to construct a sentence for this relation, based on actual population.

### Meaning
The meaning of a relation can be written in natural language in the Meaning part of the RELATION statement:

```
MEANING Language? Markup? <text>
```
The `<text>` part is where the the meaning is written down. We support both:
* a simple string, enclosed by double quotes
* any text, starting with `{+` and ending with `-}` 

If you need specific markup, there are several options to do so. The default markup is used, but you can override that here. 

### Population
You can define an initial population for the relation. This is still in the syntax for historical reasons. Today it is more common to define your population in .xlsx files. 


