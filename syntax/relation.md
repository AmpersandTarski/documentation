# The RELATION statement

## Syntax
There are two ways that a relation can be defined:

```
'RELATION' <lower case identifier> Concept * Concept Properties? ('PRAGMA' String+)? Meaning* ('=' Content)?
```

```
<lower case identifier> '::' Concept * Concept Props? ('PRAGMA' String+)? Meaning* ('=' Content)?
```
## Semantics
Both ways define a relation by its name, its source concept and target concept. The name of any relation must start with a lower case character. 

### Properties
The properties of a relation may be defined as a comma separated list (in between brackets `[` `]`) of the following keywords:
* UNI (univalent)
* INJ (injective)
* SUR (surjective)
* TOT (total)
* SYM (symmetrical)
* ASY (anti symmetrical)
* TRN (transitive)
* RFX (reflexive)
* IRF (irreflexive)
* PROP (property)




