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

### Meaning*
The meaning of a rule can be written in natural language in the Meaning part of the RULE statement:

```
MEANING Language? Markup? <text>
```
The `<text>` part is where the the meaning is written down. We support both:
* a simple string, enclosed by double quotes
* any text, starting with `{+` and ending with `-}` 

If you need specific markup, there are several options to do so. The default markup is used, but you can override that here. 

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
* TXT String
* SRC Expression
* TGT Expression
