# Rules

## Purpose

The purpose of a rule is to give meaning to data by defining consequences. Watch [this clip](https://player.ou.nl/wowzaportlets/#!production/UqXPVqC) for an example to see how that translates to your business process.

## Description

A rule is a constraint that should be kept satisfied. Keeping a rule satisfied is the topic of [enforcement](enforcement/). Every rule is denoted in Ampersand in two ways: as a statement in natural language \(i.e. free text\) and as a formal expression \(in relation algebra\). The information system you define is based on the formal rules only. The documentation you generate uses the natural language representation of your rules as well. As a modeler, you are responsible that the natural language meaning is equivalent to the formal meaning.

The formal expression of a rule uses relations that must be declared in the model. Ampersand will make sure that the types of the relations used in a rule are logically correct. Whenever the relations are populated with data, Ampersand will detect violations of any rule in the model.

## Examples

```text
RULE "uni wages" : wages~;wages |- I
```

```text
    RULE allAccepted: orderedAt |- (I/\orderAccepted; orderAccepted~); orderedAt -- == TOT extended to allow hyperlinking to vendor in violation
    MEANING "All orders have been accepted"
    MESSAGE "Not all orders have been accepted"
    VIOLATION (TGT I, TXT " has not accepted the order ",SRC I,TXT " by ", SRC orderedBy; clientName)

```

## Syntax and meaning

A `<rule>` has the following syntax:

```text
RULE <label>? <expression> <meaning>* <message>* <violation>?
```

The expression in a rule must be kept true, whether by human intervention or by compute power.

The meaning of a rule is a statement in natural language, which must be consistent with the expression. This is to be verified in the business.

The message of a rule is shown to the user when one or more violations exist.

The violation part tells how to display each violation when it occurs.

## Syntax of labels

A `<label>` is optional. It can be a single word or a string \(enclosed by double brackets\) followed by a colon \(`:`\).

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



