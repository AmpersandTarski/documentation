# Primitive expressions

## Relations

Every relation you declare contains pairs of atoms. If you declare `RELATION owner[Person*Building]`, Ampersand will know that this relation exists throughout the entire context. It will know that the concepts `Person` and `Building` exist, even when you have not [introduced them explicitly](../../concepts.md).

When a relation is used in an expression, it stands for all pairs it contains at the moment it is evaluated. Those pairs \(also referred to as the contents of the relation\) can change over time as users add or delete pairs from it. So when you define the relation, you cannot really tell which pairs it contains.

In the _**declaration**_ `RELATION owner[Person*Building]`, `owner` is the _**name**_ and `[Person*Building]` is the _**signature**_ of the relation. The left hand concept, `Person`, is called the _**source**_ of the relation and the right concept, `Building`, is called the _**target**_.

When a relation is used in an expression, we can simply use its name if that is unambiguous. For instance, in this paragraph the name `owner` obviously refers to `RELATION owner[Person*Building]`.  In some cases, however the name alone is ambiguous. For example if there are two relations with the same name and different signatures. In such cases Ampersand will try to infer the signature from the context. That however does not always succeed. In such cases, Ampersand generates an error message that asks you to remove the ambiguity by adding the correct signature.

If a pair $$(a,b)$$ is an element of a relation $$r$$, we write $$a\ r\ b$$. Alternatively we may write  $$(a,b)\in r$$ , since we know that $$r$$ is a set.

## Identity

For every concept $$C$$, the expression $$I_{[C]}$$ exists. It refers to the _**identity relation**_. It means that for every $$a\in C$$ and $$b\in C$$ we have:

$$
a = b\ \Leftrightarrow\ a\ I_{[C]}\ b
$$

The signature of $$I_{[C]}$$ is $$[C*C]$$. 

## Complete relation

For every pair of concepts $$A$$ and $$B$$ the expression $$V_{[A*B]} $$ refers to the _**complete relation**_.  For every $$a\in A$$ and $$b\in B$$ we have:

$$
a\ V_{[A*B]}\ b
$$

The signature of $$V_{[A*B]}$$ is $$[A*B]$$. 

Would you like a different explanation of the primitive expressions? [This page](../other-ways/primitive-expressions-in-set-theory.md) explains the primitive expressions in terms of set theory.
