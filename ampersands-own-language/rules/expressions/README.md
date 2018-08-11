# Expressions

## Purpose

The purpose of an expression is to compute pairs that constitute a relation.

## Description

An expression is a combination of operators and relations. Its meaning is a set of pairs.

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

| operator | code | math | position | category |  |
| :--- | :--- | :--- | :--- | :--- | :--- |
| equivalence \(equal\) | `=` | $$=$$ | Binary | rule forming |  |
| inclusion | \|- |  $$⊆$$  |  | Binary | rule forming |
| intersect | `/\` | $$∩$$ | Binary | boolean |  |
| union | `\/` | $$∪$$ | Binary | boolean |  |
| difference \(minus\) | `-` | $$-$$ | Binary | boolean |  |
| complement | `-` | $$-$$ | Overline | boolean |  |
| compose | `;` | $$;$$ | Binary | relation |  |
| converse \(flip\) | `~` | $$\tilde\$$ | Postfix | relation |  |
| left residual | `/` | $$/$$ | Binary | residual |  |
| right residual | `\` | $$\backslash$$  | Binary | residual |  |
| diamond | `<>` | $$♢$$ | Binary | residual |  |
| cartesian product | `#` | $$\times$$ | Binary |  |  |
| reflexive transitive closure | `*` | $$∗$$ | Postfix | Kleene |  |
| transitive closure | `+` | $$+$$ | Postfix | Kleene |  |

