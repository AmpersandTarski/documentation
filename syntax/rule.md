# The RULE statement

## Syntax

```
RULE Label? Expression Meaning* Message* Violation?
```

## Semantics
A rule statement defines something that should be true. It does not define the enforcement. 

### Label
The optional label can be a single word or a string (enclosed by double brackets) followed by a colon (`:`). 
### Expression
An expression consists of terms and operators. 
#### Terms
A term can be a relation or an expression enclosed in brackets.  
#### Operators
The following operators are available to build expressions from terms:

* equivalence: `=`
* inclusion: `|-`
* intersection: `/\`
* union: `\/`
* difference: `-`
* left residual: `/`
* right residual: `\`
* diamond: `<>`
* composition: `;`
* relative addition: `!`
* cartesian product: `#`
* Reflexive, transitive closure: `*` (Kleene star) --currently not implemented
* transitive closure: `+` (Kleene plus) --currently not implemented
* conversion (flip): `~`
* complement: `-`

### Meaning
The meaning of a rule 
### Message

### Violation