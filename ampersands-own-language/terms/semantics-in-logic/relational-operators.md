# Relational operators

## Purpose of relational operators

To say things such as "the name of the owner", we want to string together multiple relations \(viz. `name` and `owner`\). Relational operators allow us to make such statements.

## Converse

A relation can be altered by swapping the elements of every pair in the relation. Mathematically, $$(a, b)$$ is a different from $$(b,a)$$. This operation is called the converse operator. It produces a new relation from an existing one. It is denoted by writing $$\smallsmile\$$ \(pronounced 'wok' or ’flip’\) after the relation name. This is how converse is defined:

$$
a(r\smallsmile)b\ \Leftrightarrow\ b\ r\ a
$$

If $$r$$ has signature$$[A\times B]$$, then $$r\smallsmile\$$ has signature $$[B\times A]$$.

## Composition

The composition operator is denoted by a semicolon $$;$$ between two terms. It is pronounced as 'composed with'. Let us take a look at $$r$$ composed with $$s$$. Let $$r_{[A\times B]}$$ and $$s_{[B\times C]}$$ be two relations, with the target of r being the same as the source of s. Then the composition of $$r$$ and $$s$$ is defined by:

$$
a(r;s)c\ \Leftrightarrow\ ∃ b∈B\ ∙\ a\ r\ b ∧ b\ s\ c
$$

If $$r$$ has signature$$[A\times B]$$and $$s$$has signature$$[B\times C]$$, then $$r;s$$ has signature $$[A\times C]$$.

Would you like a different explanation of the relational operators? [This page](../other-ways/relational-operators-in-set-theory.md) explains the relational operators in terms of set theory. [This page](../semantics-in-natural-language/relational-operators-in-natural-language.md) explains them in natural language. [Click here](../semantics-in-algebra/relational-operators-in-algebra.md) for some algebraic rules about relational operators.

