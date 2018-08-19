---
description: >-
  This page introduces you to the meaning of the symbols that constitute
  relation algebra. The time you spend getting acquainted with this will pay off
  in designing correct software...
---

# Terms

## Purpose

The purpose of an term is to compute pairs that constitute a relation. We use operators to assemble terms from smaller ones, to express in formal language precisely what is meant in the natural language of the business.

## Description

An term is a combination of operators and relations. Its meaning is a set of pairs.

## Examples

`owner`

`r;s~`

`I /\ goalkeeper;goalkeeper~`

`destination;"Algarve" |- spoken;"Portugese"`

## Syntax

Every term is built out of relations, which are combined by operators. An term has one of the following 8 syntactic structures

```text
<Term> <BinaryOperator> <Term>
<UnaryOpPre> <Term>
<Term> <UnaryOpPost>
<RelationRef> <signature>?
I <signature>?
V <signature>?
<atom>
( <Term> )
```

## `Operators`

The operators come in categories. We advise novices to study only the categories rules, boolean and relational. There is a wealth of things you can express in only these categories. The category residual seems a lot harder to learn and the category Kleene is not fully implemented yet.

| Category | binary operators | binding power | unary operators | binding power |
| :--- | ---: | :--- | ---: | :--- |
| rules | $$=$$ and $$\subseteq\$$ | 1 \(weakest\) |  |  |
| boolean | $$\cup$$, $$\cap$$, and $$-$$ | 2 | $$\overline{\strut}$$ | 5 |
| relational | $$;$$, $$\times$$, and $$\dagger$$ | 4 | $$\smallsmile$$ | 5 |
| residual | $$\backslash$$, $$/$$, and $$♢$$ | 3 |  |  |
| Kleene |  |  | $$∗ $$ and $$+$$ | 5 |

## Brackets

Operators with different binding power may be used in the same term without brackets, because the binding power tells how it is interpreted. For example $$r\cap s;t$$ means $$r\cap(s;t)$$ because $$;$$ has a higher binding power than $$\cap$$. 

Operators with the same binding power must be used unambiguously. For example: $$r\cap(s-t)$$ means something different than $$(r\cap s)-t$$. In such cases Ampersand insists on the use of brackets, so readers without knowledge of the binding powers of the operators can read a term unambiguously.

Repeated uses of an associative operator does not require brackets. So $$r\cap s \cap t$$ is allowed because $$\cap$$ is associative.

## Notation on the keyboard

When coding in Ampersand, these operators are typed with characters on the keyboard. The correspondence between the operators in code and in math is given in the following table:

| operator name | code | math | remark |
| :--- | :---: | :---: | :--- |
| equivalence \(equal\) | `=` | $$=$$ |  |
| inclusion | `|-` | $$\subseteq$$ |  |
| intersect | `/\` | $$∩$$ | associative |
| union | `\/` | $$∪$$ | associative |
| difference \(minus\) | `-` | $$-$$ |  |
| complement | `-` | $$\overline{\strut }$$ | in code: Prefix; In math: Overline |
| compose | `;` | $$;$$ | associative |
| converse \(flip\) | `~` | $$\smallsmile$$ | postfix |
| left residual | `/` | $$/$$ |  |
| right residual | `\` | $$\backslash$$ |  |
| diamond | `<>` | $$♢$$ |  |
| relational product | `!` | $$†$$ | associative |
| cartesian product | `#` | $$\times$$ |  |
| reflexive transitive closure | `*` | $$∗$$ | postfix |
| transitive closure | `+` | $$+$$ | postfix |

## Semantics

The semantics of the operators can be discussed in many different ways. We want to include  a number of different ways of explaining in the following table. The advice to novice is to study one way of explaining, whichever one suits the prior knowledge best.

| Category | Logic | Sets | Axioms | Graphical |
| :--- | :--- | :--- | :--- | :--- |
| boolean | [logic](boolean-operators.md) | [sets](other-ways/boolean-operators-sets.md) | axioms | graphical |
| relational | [logic](relational-operators.md) | [sets](other-ways/relational-operators-in-set-theory.md) | axioms | graphical |
| residual | [logic](residual-operators.md) | sets | axioms | graphical |
| products | logic | sets | axioms | graphical |
| primitive terms | [logic](primitive-terms.md) | [sets](other-ways/primitive-terms-in-set-theory.md) | axioms | graphical |

\(the pages without hyperlinks are yet to be made\).

