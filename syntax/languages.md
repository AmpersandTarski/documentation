# Language support
To tell Ampersand what language you use, you can append a language directive to a context, a meaning, and to a purpose statement. Currently English and Dutch are supported.
## Syntax
A language directive has the following syntax

```
IN <language>
```
Where `<language>` can be `ENGLISH` or `DUTCH`.
## Semantics by example
The first example is a context declaration in which the language `ENGLISH` is specified.
```
CONTEXT Foo IN ENGLISH
...
ENDCONTEXT
```
This means that all natural language elements within this context are written in `ENGLISH`, unless specified otherwise.

The second example is a `MEANING`, which can be used in a `RULE` statement and in a `RELATION` statement. This example uses a `MEANING` in `ENGLISH`:
```
RELATION ptpic[Pattern*Image] [UNI]
MEANING IN ENGLISH "Relation ptpic relates a pattern to the image of its conceptual diagram."
```
The language directive `IN ENGLISH` means that the meaning of the relation `ptpic[Pattern*Image]` is written in `ENGLISH`.
 
The third example is a `PURPOSE` statement in which the language `DUTCH` is specified.
```
PURPOSE CONCEPT Person IN DUTCH
{+ Een persoon is een natuurlijke persoon of een rechtspersoon +}
```
This means that the contents of this purpose statement is written in `DUTCH`.
 
## Additional information
Ampersand assumes that whatever is written is written in the language denoted in the language directive. It doesn't check whether that language is actually used.

