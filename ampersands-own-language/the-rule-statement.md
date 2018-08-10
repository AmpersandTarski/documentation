# The RULE statement

## Purpose

The purpose of a rule is to give meaning to data.

## Description

A rule is a constraint that should be kept satisfied.

Example:

* The statement "St. Paul street is a one way street." might be either true or false. We just have to check the road signs on St. Paul street to know. If, however, the city council of the City of St. Catharines decides that St. Paul street is a one way street, we have a rule. It is a rule because St. Paul street **must be** a one way street. 

  The word _must_ implies that there is someone who says so: the authority that imposes the rule.

* In this example, the city council of St. Catharines, by the authority invested upon it by the law, has ordained that St. Paul street must be a one way street.
* The people who are affected by this are called stakeholders.
* The City of St. Catharines is the scope of this rule, because that is where this rule is valid.
* Outside the City of St. Catharines \(the scope\), this rule has no meaning.

  For example, in Smalltown, NY , this rule is meaningless. There, the rule doesn't even make sense because Smalltown, NY , does not even have a St. Paul street.

## Syntax

A `<rule>` has the following syntax:

```text
RULE <label>? <expression> <meaning>* <message>* <violation>?
```

## Syntax of labels

A `<label>` is optional. It can be a single word or a string \(enclosed by double brackets\) followed by a colon \(`:`\).

### Expression

An expression can be any of:

* Expression BinaryOperator Expression
* UnaryOpPre Expression
* Expression UnaryOpPost
* a \(reference to a\) relation \(including an optional signature, when required to disambiguate\):
  * A relation by name 
  * `I` \(the Identity relation\)
  * `V` \(carthesian product\) Note that this can also be used to denote the empty relation, by using the unary negation operator:  '-v'
  * A singleton expression \(the value of an atom\)
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
* Unary operator \(pre-operator\)
  * complement: `-`
* Unary operators \(post-operator\)
  * conversion \(flip\): `~`
  * Reflexive, transitive closure: `*` \(Kleene star\) --currently not implemented
  * transitive closure: `+` \(Kleene plus\) --currently not implemented

### MEANING\*

The meaning of a rule can be written in natural language in the Meaning part of the RULE statement.  
It is a good habit to specify the meaning! The meaning will be printed in the functional specification.  
The meaning is optional.

#### Syntax

```text
MEANING Language? Markup? <text>
```

The `<text>` part is where the the meaning is written down. We support both:

* a simple string, enclosed by double quotes
* any text, starting with `{+` and ending with `-}` 

The optional language is specified as

* `IN ENGLISH` or 
* `IN DUTCH`.

The optional Markup is one of :

* `REST` \(Restructured text\)
* `HTML`
* `LATEX` 
* `MARKDOWN`

If you need specific markup, there are several options to do so. The default markup is used, but you can override that here. We rely on [Pandoc](http://pandoc.org/) to read the markup.

### MESSAGE\*

Messages may be defined to give feedback whenever the rule is violated. The message is a predefined string. Every message for a rule should be for another Language.

```text
MESSAGE Markup
```

### VIOLATION?

A violation message can be constructed so that it gives specific information about the violating atoms:

```text
VIOLATION (Segment1,Segment2,... )
```

Every segment must be of one of the following forms:

* `TXT` String
* `SRC` Expression
* `TGT` Expression

A rule is violated by a pair of atoms \(source, target\). The source atom is the root of the violation message. In the message the target atoms are printed. With the Identity relation the root atom itself can be printed. You can use an expression to print other atoms. Below two examples reporting a violation of the rule that each project must have a project leader. The first prints the project's ID, the second the project's name using the relation projectName:

`VIOLATION ( TXT "Project ", SRC I, TXT " does not have a projectleader")`

`VIOLATION ( TXT "Project ", SRC projectName, TXT " does not have a projectleader")`

## ROLE MAINTAINS

By default rules are invariant rules.  
By preceding the rule statement with a role specification for this rule, the rule becomes a process rule.

tbd

