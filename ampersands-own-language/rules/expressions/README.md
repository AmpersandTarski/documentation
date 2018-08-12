---
description: >-
  This page introduces you to the meaning of the symbols that constitute
  relation algebra. The time you spend getting acquainted with this will pay off
  in designing correct software...
---

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
<RelationRef> <signature>?
I <signature>?
V <signature>?
<atom>
( <Expression> )
```

The following operators are available to build expressions:

| operator | code | math | position | category |
| :--- | :---: | :---: | :--- | :--- |
| equivalence \(equal\) | `=` | $$=$$ | Binary | rule forming |
| inclusion | \|- | $$⊆$$ | Binary | rule forming |
| intersect | `/\` | $$∩$$ | Binary | boolean |
| union | `\/` | $$∪$$ | Binary | boolean |
| difference \(minus\) | `-` | $$-$$ | Binary | boolean |
| complement | `-` | $$-$$ | Overline | boolean |
| compose | `;` | $$;$$ | Binary | relation |
| converse \(flip\) | `~` | $$\tilde\$$ | Postfix | relation |
| left residual | `/` | $$/$$ | Binary | residual |
| right residual | `\` | $$\backslash$$ | Binary | residual |
| diamond | `<>` | $$♢$$ | Binary | residual |
| relational product | `!` | $$†$$ | Binary | product |
| cartesian product | `#` | $$\times$$ | Binary | product |
| reflexive transitive closure | `*` | $$∗$$ | Postfix | Kleene \(not yet implemented\) |
| transitive closure | `+` | $$+$$ | Postfix | Kleene \(not yet implemented\) |

## Semantics

The semantics are discussed in terms of sets. The following table shows the way. We advise novices to study only the categories rules, boolean and relational:

| Category | set |
| :--- | :--- |
| rules | $$=$$ and $$\subseteq\$$ |
| boolean | $$\cup$$, $$\cap$$, and $$-$$ |
| relational | $$;$$ and $$\tilde\$$ |
| residual | $$\backslash$$, $$/$$, and $$♢$$ |
| Kleene | $$∗$$ and $$+$$ |
| Products | $$\times$$ and $$†$$ |

