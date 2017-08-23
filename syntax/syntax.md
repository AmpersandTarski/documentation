# Ampersand Syntax

When writing an Ampersand model, the Ampersand language is used. This chapter contains a reference of the syntax.

## Learning the syntax
The most effective way to learn Ampersand's syntax is to copy from existing scripts. This is learning by examples. This reference chapter is suitable to check things, and less suitable for learning.

## Symbols
Ampersand has *reserved words*, such as `RELATION`, `CONTEXT`, `CONTAINS` all of which are written in capital letters. They are introduced on the fly. You will find an exhaustive list of reserved words at the end of this page.

String atoms are written between double quotes, e.g. `"Peter"` or `"KD-686-D"`.
Numeric atoms always start with a digit, e.g. `4711` or `75.88E3`

Brackets must always match. For expressions, we use round brackets `(` and `)`. For populations and interfaces we use square brackets `[` and `]`.

Constructs that contain ampersand statements are contexts and patterns. They always come in pairs: `PATTERN` and `ENDPATTERN`, and  `CONTEXT` and `ENDCONTEXT`.

White space characters (spaces, tabs, CRLF) are meaningless. You can use them freely to layout your script in a way that helps you to recognize its structure.

A comment on a single line starts with `--`. Everything after a `--` symbol is ignored until the line ends. Multiline comments are wrapped between comment brackets `{-` and `-}`. Multiline comments may be nested.

Identifiers always start with a letter. Concepts start with a capital letter, as in `Person`, `Case`, `A`, and `Order`. Relation names start with a lower case letter, as in `contains`, `attr`, `sessionLogin`, or `r`.

Operators are used to combine expressions into larger expressions.

| operator category | operators |
| --- | --- |
| boolean | `\/` (union), `/\` (intersect)  |

## How to read the syntax statements used in this chapter

Sometimes, in describing the syntax, EBNF-like notation is used, with the following meaning:

| Operator | meaning |
| --- | --- |
| Foo? | Zero or one occurrence of Foo |
| Foo+ | One or more occurrences of Foo |
| Foo\* | Zero or more occurrences of Foo |

To keep this chapter as readable as possible, we have chosen to omit some details that are irrelevant for practically all &-modelers. In the very rare case that these technicalaties are of interest, the reader could have a look in [the sourcecode of the parser](https://github.com/AmpersandTarski/Ampersand/blob/master/src/Database/Design/Ampersand/Input/ADL1/Parser.hs), where all EBNF statements are in comments.

## List of reserved words

Keywords in Ampersand are always CAPITAL words.

* Keywords for the [main structure](structureOfModel.md)
  * `CONTEXT`
  * `ENDCONTEXT`
  * `IN`
  * `ENGLISH`
  * `DUTCH`
  * `INCLUDE`
  * `META`
  * `THEMES`
  * `PATTERN`
  * `ENDPATTERN`
  * `CONCEPT`
* Keywords for [relations](relation.md)
  * `RELATION`
  * `PRAGMA`
  * `UNI`
  * `INJ`
  * `SUR`
  * `TOT`
  * `SYM`
  * `ASY`
  * `TRN`
  * `RFX`
  * `IRF`
  * `PROP`
  * `POPULATION`
  * `CONTAINS`
* Keywords for [rules](rule.md)
  * `RULE`
  * `MESSAGE`
  * `VIOLATION`
  * `TXT`
  * `SRC`
  * `TGT`
  * `I`
  * `V`
  * `ONE`
  * `ROLE`
  * `MAINTAINS`
* Keywords for [purpose](purpose.md) and meaning
  * `PURPOSE`
  * `MEANING`
  * `REF`
  * `REST`
  * `HTML`
  * `LATEX`
  * `MARKDOWN`
* Keywords for [interfaces](the_interface_statement.md)
  * `INTERFACE`
  * `FOR`
  * `LINKTO`
  * `BOX`
  * `ROWS`
  * `TABS`
  * `COLS`
* Keywords for identities
  * `IDENT`
* Keywords for views
  * `VIEW`
  * `ENDVIEW`
  * `DEFAULT`
  * `TEMPLATE`
  * `HTML`
* Keywords for generalisations:
  * `CLASSIFY`
  * `ISA`
  * `IS`
* Keywords for TType:
  * `REPRESENT`
  * `TYPE`
  * `ALPHANUMERIC`
  * `BIGALPHANUMERIC`
  * `HUGEALPHANUMERIC`
  * `PASSWORD`
  * `BINARY`
  * `BIGBINARY`
  * `HUGEBINARY`
  * `DATE`
  * `DATETIME`
  * `BOOLEAN`
  * `INTEGER`
  * `FLOAT`
  * `AUTOINCREMENT`
* Keywords for values of atoms:
  * `TRUE`
  * `FALSE` --for booleans
* Experimental stuff:
  * `BYPLUG`
  * `SQLPLUG`
  * `PHPPLUG`
  * `SERVICE`
  * `EDITS`
* Depreciated keywords:
  * `SPEC`
  * `KEY`
  * `PROCESS`
  * `ENDPROCESS`



