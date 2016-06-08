# Ampersand Syntax

When writing an Ampersand model, the Ampersand language is used. This chapter will contain a reference of the syntax.

## How to read the syntax statements used in this chapter
Sometimes, in describing the syntax, EBNF-like notation is used, with the following meaning:

Operator | meaning
------|------
Foo? | Zero or one occurrence of Foo
Foo+ | One or more occurrences of Foo
Foo\* | Zero or more occurrences of Foo

To keep this chapter as readable as possible, we have chosen to omit some details that are irrelevant for practically all &-modelers. In the very rare case that these technicalaties are of interest, the reader could have a look in [the sourcecode of the parser](https://github.com/AmpersandTarski/Ampersand/blob/master/src/Database/Design/Ampersand/Input/ADL1/Parser.hs), where all EBNF statements are in comments.

### Keywords


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
   * `MEANING`
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
 * Keywords for purposes
   * `PURPOSE`
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
 * Keywords for identitys
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
