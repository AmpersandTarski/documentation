# Primitive terms in set theory

## Relations

Every relation you declare is a set of pairs. If you declare `RELATION owner[Person*Building]`, Ampersand knows that this relation exists throughout the entire context. It infers that the concepts `Person` and `Building` exist, even when you have not [introduced them explicitly](../../concepts.md).

When a relation is used in an term, it stands for the set of pairs it contains at the moment it is evaluated. That set \(also referred to as the contents of the relation\) can change over time as users add or delete pairs from it. So when you define the relation, you cannot really tell which pairs it contains.

In the _**declaration**_ `RELATION owner[Person*Building]`, `owner` is the _**name**_ and `[Person*Building]` is the _**signature**_ of the relation. The left hand concept, `Person`, is called the source of the relation and the right concept, `Building`, is called the target.

When a relation is used in an term, we can simply use its name if that is unambiguous. For instance, in this paragraph the name `owner` obviously refers to `RELATION owner[Person*Building]`. In some cases, however the name alone is ambiguous. For example if there are two relations with the same name and different signatures. In such cases Ampersand will try to infer the signature from the context. That however does not always succeed. In such cases, Ampersand generates an error message that asks you to remove the ambiguity by adding the correct signature.

If a pair $$(a,b)$$ is an element of a relation $$r$$, we write $$(a,b)\in r$$. Alternatively we may write $$a\ r\ b$$.

## Identity

For every concept $$C$$, the term $$I_{[C]}$$ represents the _**identity relation**_. It is defined by:

$$
I_{[C]}\ =\ \{(c,c) |\ c\in C\}
$$

The signature of $$I_{[C]}$$ is $$[C*C]$$. In Ampersand code you write `I[C]`.

## Complete relation

For every pair of concepts $$A$$ and $$B$$ the term $$V_{[A*B]}$$ represents the _**complete relation**_. It is defined by:

$$
V_{[A*B]}\ =\ \{(a,b) |\  a\in A\ \wedge\ b\in B\}
$$

The signature of $$V_{[A*B]}$$ is $$[A*B]$$. In Ampersand code you write `V[A*B]`.

Would you like a different explanation of the primitive terms? [This page](../semantics-in-logic/primitive-terms.md) explains the primitive terms in logic.

