# The RULE statement

## Syntax

```
RULE Label? Expression Meaning* Message* Violation?
```

## Semantics
A rule statement defines something that should be true. It does not define the enforcement. 

### Label?
The optional label can be a single word or a string (enclosed by double brackets) followed by a colon (`:`). 

### Expression
An expression can be any of:
* Expression BinaryOperator Expression
* UnaryOpPre Expression
* Expression UnaryOpPost
* a (reference to a) relation (including an optional signature, when required to disambiguate):
 * A relation by name 
 * `I` (the Identity relation)
 * `V` (carthesian product) 
 * A singleton expression (the value of an atom in between single quotes)
* an expression enclosed in brackets.

#### Operators
The following operators are available to build expressions:

* Binary operators
  * equivalence: `=`
  * composition: `;`
  * inclusion: `|-`
  * intersection: `/\`
  * union: `\/`
  * difference: `-`
  * left residual: `/`
  * right residual: `\`
  * diamond: `<>`
  * relative addition: `!`
  * cartesian product: `#`
* Unary operator (pre-operator)
  * complement: `-`
* Unary operators (post-operator)
  * conversion (flip): `~`
  * Reflexive, transitive closure: `*` (Kleene star) --currently not implemented
  * transitive closure: `+` (Kleene plus) --currently not implemented



### MEANING*
The meaning of a rule can be written in natural language in the Meaning part of the RULE statement. For more details see [MEANING](meaning.md)

### Message*
Messages may be defined to give feedback whenever the rule is violated. Every message for a rule should be for another Language.
```
MESSAGE Markup
```
### Violation?
A violation message can be constructed for the case that a specific violation is to be signaled:

```
VIOLATION (Segment1,Segment2,... )
```
Every segment must be of one of the following forms:
* `TXT` String
* `SRC` Expression
* `TGT` Expression
