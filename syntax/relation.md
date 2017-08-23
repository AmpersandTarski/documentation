# The RELATION statement

## Purpose
A relation statement defines a relation. Each relation is a set that contains pairs of atoms. Over time, pairs can be inserted into or deleted from a relation.

## Examples
```
RELATION soldBy[Order*Person]
```

```
RELATION contract[Order*ContractID] [UNI,TOT]
PRAGMA "Order " " has contract " " as its legal basis."
MEANING "Every Order has a unique ContractID which specifies the legal basis for that particular order."
```

## Syntax
A relation statement can have one of the following forms:

```
RELATION <lower case identifier> '[' <upper case identifier>'*' <upper case identifier>']'
<properties>? <pragma>? <meaning>?
```
  
```
<lower case identifier> '::' <upper case identifier> '*' <upper case identifier>
<properties>? <pragma>? <meaning>?
```
  
```
<lower case identifier> '::' <upper case identifier> '->' <upper case identifier>
<properties>? <pragma>? <meaning>?
```
The second and third ways will become obsolete in future versions of Ampersand.

All three ways define a relation by its name, its source concept and its target concept. The name of a relation is a single word that starts with a lower case letter. The source and target concepts start with an upper case letter.

A relation statement may occur anywhere inside a context, both inside and outside of a pattern.

The  `<properties>`,  `<pragma>`,  and  `<meaning>`-parts are discussed in the sequel.

## Semantics
A relation statement means that there exists a relation in the current context with the specified name, source concept and target concept.

The name, source concept and target concept together identify a relation uniquely within its context. 

This means that the name of a relation does not have to be unique. E.g. `name[Book*Name]` can be specified in the same context as `name[Person*Name]`. Because they have different source concepts, these are different relations.

## Properties
The `<properties>`-part is meant for writing multiplicity constraints in a comma separated list between square brackets '[' and ']'. E.g. `[UNI,TOT]`
. The following multiplicity constraints are available:
* `UNI` (univalent)
* `INJ` (injective)
* `SUR` (surjective)
* `TOT` (total)
* `SYM` (symmetric)
* `ASY` (antisymmetric)
* `TRN` (transitive)
* `RFX` (reflexive)
* `IRF` (irreflexive)
* `PROP` (property)

Let's assume that we want to express that any person can live in one city only. So under this constraint "*Joe Smith lives in New York*" and "*Joe Smith lives in Denver*" cannot both be true at the same time. 

In relation algebra, we say that the relation is univalent, which means that every atom in the source concept can only be paired with a single atom in the target concept. This is modeled as

    RELATION lives[Person*City][UNI]
    MEANING "A person can live in one city only."


## PRAGMA
A `<pragma>` is optional and is characterized by the reserved word `PRAGMA`. The `PRAGMA` is followed by two or three strings. It is used to construct sentences in natural language, using pairs from the actual population of a relation. A pragma specifies how we speak (in natural language) about any pair in the relation. Ampersand also uses pragmas to generate examples in the functional specification. Example of a pragma with three strings:
```
PRAGMA "Student " " flies the flag of " " in top."
```
To use this pragma on the pair `(John,Amsterdam)` results in the sentence `"Student John flies the flag of Amsterdam in top."`. The two atoms are fitted in between the three strings. A pragma with two strings is identical to a pragma in which the third string is empty.

(The `PRAGMA` keyword will become obsolete in a future version of Ampersand. It will be replaced by the `VIEW`-statement which offers more flexibility in composing sentences.)

Example:
```
RELATION accepted[Provider * Order] [INJ] PRAGMA "Provider " " has accepted order "
```
The `PRAGMA` tells us that it makes sense to utter the phrase `"Provider Mario's Pizza's has accepted order 12345."`

## MEANING
The meaning of a relation is optional and is specified in natural language in the `MEANING` part of the `RELATION`-statement. 
It is a good habit to specify the meaning! The meaning will be printed in the functional specification.
 
```
MEANING Language? Markup? <text>
```

The `<text>` part is where the the meaning is written down. We support both:
* a simple string, enclosed by double quotes
* any text, starting with `{+` and ending with `-}` 

The optional language is specified as 
* `IN ENGLISH` or 
* `IN DUTCH`.

The optional Markup is one of :
 * `REST` (Restructured text)
 * `HTML`
 * `LATEX` 
 * `MARKDOWN`

If you need specific markup, there are several options to do so. The default markup is used, but you can override that here. We rely on [Pandoc](http://pandoc.org/) to read the markup.

### CONTAINS POPULATION*
You can define an initial population for the relation. This is still in the syntax for historical reasons. Today it is more common to define your population in .xlsx files. 


