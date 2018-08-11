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

| :--- | -:- | -:- | :--- |
| Operators that form rules |
| equivalence | `=` | $$=$$ | Binary |
| inclusion | `|-` | $$⊆$$ | Binary |
* Set operators
| intersection | `/\` | $$∩$$ | Binary |
| union | `\/` | $$∪$$ | Binary |
| difference | `-` | $$-$$ | Binary |
| complement | `-` | $$-$$ | Overline |
* Relation operators
| composition | `;` | $$;$$ | Binary |
| left residual | `/` | $$/$$ | Binary |
| right residual | `\` | $$\\$$ | Binary |
| diamond | `<>` | $$♢$$ | Binary |
| cartesian product | `#` | $$\times$$ | Binary |
* Unary prefix operators
* Unary postfix operators \(`<UnaryOpPost>`\)
| conversion \(flip\) | `~` | $$\tilde$$ | Postfix |
| Reflexive, transitive closure | `*`  | $$∗$$ | Postfix |\(Kleene star\) --currently not implemented
| transitive closure | `+`  | $$+$$ | Postfix |\(Kleene plus\) --currently not implemented

### 

