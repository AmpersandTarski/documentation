# The ENFORCE statement

## Purpose

The purpose of this statement is to automatically modify the population of a relation based on rules. 

## Syntax 

Since ampersand 4.4.0 the syntax of this statement is:

```text
ENFORCE <RelationRef> <type>? 
        <operator>
        <Term>
```

The &lt;operator&gt; can be one of **`:=`,** `:<` or `>:` .

This statement may occur anywhere within a context, either inside or outside a pattern.

## Semantics

This statement means the the population of the relation should automatically be kept respectively equal \( **`:=`**\), a subset \(`:<`\) or a superset \(`>:`\)of the population of the given term. 

## Examples

```text
ENFORCE r := s;t
{- The population of the relation r must be kept equal to the population
   of the expression s;t . The effect can be observed in the prototype.
-}
```

```text
ENFORCE canDrive :< hasCar /\ hasDriverLicence
{- Whenever a person can drive, that person needs to have a car and a driver licence.
   However, if that person has both these assets, it is still possible that he/she 
   cannot drive. 
-}
```

## Miscellaneous

* Both the sources and the targets of the relation and the term must match. An error message is given otherwise.
* The relation must be specified in order to use it here, as is the case with any relation used in an expression.

