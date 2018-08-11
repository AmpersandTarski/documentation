# Relation operators

Earlier, we pointed out that the Cartesian Product of a set $$A$$ and a set $$B$$ is $$A x B$$, and this is not the same as $$B x A$$ \(except if $$A=B$$\). However, a relation that contains pairs of the form $$(a, b)$$ can easily be altered by changing the order of the elements. Mathematically, it is a different pair. This operation, producing a new relation from an existing one, is called the converse operator. It is denoted by writing $$\tilde\$$ \(pronounced ’tilde’ or ’flip’\) after the relation name. This is how converse is defined:
$$
r\tilde\ =\ \{ (b, a) | (a, b)∈r \}
$$

As the converse operator merely swaps the left hand side and the right hand side of each tuple, it is easy to write down the extension of the new relation, if given the extension of the old one. In a tabular form, the inverse operator merely swaps columns.

The composition operator is denoted by a semicolon ; between two expressions. It is pronounced as 'composed with', in this case: $$r$$ composed with $$s$$.

The composition operation is defined as follows: Let $$r[A x B]$$ and $$s[B x C]$$ be two relations, with the target of r being the same as the source of s. Then the composition of $$r$$ and $$s$$, is a relation with signature $$(r;s)[AxC]$$, and its content is $${ \(a, c\) \| there exists at least one b • B such that a r b and also b s c }$$

