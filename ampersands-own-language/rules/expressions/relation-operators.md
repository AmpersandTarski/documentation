# Relation operators

## Converse

A relation that contains pairs of the form $$(a, b)$$ can be altered by swapping the elements of every pair in the relation. Mathematically, $$(a, b)$$ is a different from $$(b,a)$$. This operation is called the converse operator. It produces a new relation from an existing one. It is denoted by writing $$\tilde\$$ \(pronounced ’tilde’ or ’flip’\) after the relation name. This is how converse is defined:

$$
r\tilde\ =\ \{ (b, a) | (a, b)∈r \}
$$

If $$r$$ has signature$$[A\times B]$$, then $$r\tilde\$$ has type $$[B\times A]$$.

## Composition

The composition operator is denoted by a semicolon ; between two expressions. It is pronounced as 'composed with', in this case: $$r$$ composed with $$s$$.

The composition operation is defined as follows: Let $$r_{[A\times B]}$$ and $$s_{[B\times C]}$$ be two relations, with the target of r being the same as the source of s. Then the composition of $$r$$ and $$s$$, is a relation with signature $$(r;s)_{[A\times C]}\ =\ \{ (a, c) | ∃ b∈B\ ∙\ a\ r\ b ∧ b\ s\ c \}$$

