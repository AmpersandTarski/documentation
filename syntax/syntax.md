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