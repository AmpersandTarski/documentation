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
A relation statement can have one of the following shapes:

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

The `<properties>`-part has the form
```
'[' <property>* ']'
```
It is meant for writing multiplicity constraints such as `UNI`, `PROP`, or `SYM` in a convenient form.

The  `<pragma>`-part 
<meaning> 
('PRAGMA' String+)? Meaning* ('=' Content)?


## Semantics
Both ways define a relation by its name and its sign. 

The name of a relation is a single word, starting with a lower case character. The name is followed by the sign. The sign is the combination of the source concept and the target concept. It is these three attributes that constitute the unique identifier of the relation. 

This means that the name of a relation does not have to be unique. E.g. `name[Book*Name]` can be specified in the same context as `name[Person*Name]`. When these relations are used in rules or interfaces it might take extra effort to make sure the expression is unambigious.

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


### PRAGMA?
The optional PRAGMA keyword is followed by a couple of strings, that can be used to construct a sentence for this relation that will be printed as example in the functional specification. The sentence will be based on the actual population.
The source and the target of the relation are represented with two double quotes with no text between them. The first one will be filled with the source atom, the second with the target atom. These can be place around, before or after the text enclosed with quotes. 

```
PRAGMA "" " lives in " ""
```
This will result in a printed sentence "John lives in Amsterdam".

The PRAGMA keyword will become obsolete in the future. There will be a more flexible mechanism to model phrases. With the current PRAGMA syntax one can only model phrases that consist of five parts: the second and fourth part of the phrase are placeholders for the source and target instances. 

```
RELATION accepted[Provider * Order] [INJ] PRAGMA "Provider " " has accepted order "
```
tells us that the prase: *Provider Mario's Pizza's has accepted order 12345* has meaning, and can be either true of false.


### MEANING*
The meaning of a rule is optional and will be specified in natural language in the MEANING part of the RELATION statement. 
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


