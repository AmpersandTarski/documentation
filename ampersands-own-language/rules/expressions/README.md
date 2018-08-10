# Expressions

## Purpose

The purpose of an expression is to compute pairs that constitute a relation.

## Description

An expression is a combination of operators and relations whose meaning is a set of pairs. 

## Examples

`owner`

 `r;s~`

`I /\ goalkeeper;goalkeeper~`

`destination;"Algarve" |- spoken;"Portugese"`

## Syntax

An expression can be any of:

```text
<Expression> <BinaryOperator> <Expression>
<UnaryOpPre> <Expression>
<Expression> <UnaryOpPost>
<RelationRef>
I <signature>?
V <signature>?
<atom>
( <Expression> )
```

The following operators are available to build expressions:

* Binary operators \(`<BinaryOperator>`\)
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
* Unary prefix operators \(`<UnaryOpPre>`\)
  * complement: `-`
* Unary postfix operators \(`<UnaryOpPost>`\)
  * conversion \(flip\): `~`
  * Reflexive, transitive closure: `*` \(Kleene star\) --currently not implemented
  * transitive closure: `+` \(Kleene plus\) --currently not implemented

### 

