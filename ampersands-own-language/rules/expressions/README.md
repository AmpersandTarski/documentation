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


* Operators that form rules
| :--- | :--- | :--- | :--- |
| equivalence (equal)| `=` | $$=$$ | Binary |
| inclusion | `|-` | $$⊆$$ | Binary |
* Set operators
| :--- | :--- | :--- | :--- |
| intersect | `/\` | $$∩$$ | Binary |
| union | `\/` | $$∪$$ | Binary |
| difference (minus) | `-` | $$-$$ | Binary |
| complement | `-` | $$-$$ | Overline |

* Relation operators
| :--- | :--- | :--- | :--- |
| compose | `;` | $$;$$ | Binary |
| converse \(flip\) | `~` | $$\tilde$$ | Postfix |
| :--- |
* Residual operators
| :--- | :--- | :--- | :--- |
| left residual | `/` | $$/$$ | Binary |
| right residual | `\` | $$\\$$ | Binary |
| diamond | `<>` | $$♢$$ | Binary |
* Product operator
| :--- | :--- | :--- | :--- |
| cartesian product | `#` | $$\times$$ | Binary |
* Kleene closures (not implemented)
| :--- | :--- | :--- | :--- |
| Reflexive, transitive closure | `*`  | $$∗$$ | Postfix |\(Kleene star\) --currently not implemented
| transitive closure | `+`  | $$+$$ | Postfix |\(Kleene plus\) --currently not implemented

### 

