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

The operators come in families. We advise novices to study only the rule operators, boolean operators and relational operators. There is a wealth of things you can express with just these operators. The residual operators seem a lot harder to learn and the Kleene operators are not fully implemented yet. You can click the hyperlink to navigate to the semantics of each family.

| Family | binary operators | binding power | unary operators | binding power |
| :--- | ---: | :--- | ---: | :--- |
| rules | $$=$$ and $$\subseteq\$$ | 1 \(weakest\) |  |  |
| [boolean](semantics-in-logic/boolean-operators.md) | $$\cup$$, $$\cap$$, and $$-$$ | 2 | $$\overline{\strut}$$ | 5 |
| [relational](semantics-in-logic/relational-operators.md) | $$;$$, $$\times$$, and $$\dagger$$ | 4 | $$\smallsmile$$ | 5 |
| [residual](semantics-in-logic/residual-operators.md) | $$\backslash$$, $$/$$, and $$♢$$ | 3 |  |  |
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
| complement | `-` | $$\overline{\strut }$$ | in code: Prefix; in math: Overline |
| compose | `;` | $$;$$ | associative |
| converse \(flip\) | `~` | $$\smallsmile$$ | postfix |
| left residual | `/` | $$/$$ |  |
| right residual | `\` | $$\backslash$$ |  |
| diamond | `<>` | $$♢$$ |  |
| relational product | `!` | $$†$$ | associative |
| cartesian product | `#` | $$\times$$ |  |
| reflexive transitive closure | `*` | $$∗$$ | postfix |
| transitive closure | `+` | $$+$$ | postfix |

## 

