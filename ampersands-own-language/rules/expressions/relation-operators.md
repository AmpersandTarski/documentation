# Relational operators
Earlier, we pointed out that the Cartesian Product of a set A and a set
B is A x B, and this is not the same as B x A (except if A=B).
However, a relation that contains pairs of the form (a, b)
can easily be altered by changing the order of the elements.
Mathematically, it is a different pair. This
operation, producing a new relation from an existing one, is called the
converse operator. It is denoted by writing  
(pronounced ’tilde’ or ’flip’) after the relation name.

The formal definition of converse is: r~ = { (b, a) | (a, b)∈r }

As the converse operator merely swaps the left hand side and the right
hand side of each tuple, it is easy to write down the extension of the
new relation, if given the extension of the old one. In a tabular form,
the inverse operator merely swaps columns. In the matrix form such as
figure B13, the inverse operator mirrors the entire content of the
matrix along the diagonal (the two axes, source and target, are
swapped).
  
The composition operator is denoted by a semicolon ; between two expressions. It is pronounced as 'composed with', in this case: r composed with s. 

The composition operation is defined as follows:
Let r :: A x B and s :: B x C be two relations, with the target of r being the same as the source of s.
Then the composition of r and s, is a relation with signature (r;s)[AxC], 
and its content is \{ (a, c) | there exists at least one b • B such that a r b and also b s c \} 


Exercise
\begin{itemize}
\item	verify that r ; s = \{ (a, c) | tarr (a)  srcs (c)  \} for any two relations r and s. 
\item prove that identity is neutral with respect to composition, i.e. if you compose any relation r with the identity relation, the outcome is the same relation r: 
r ; Id[B] = Id[A] ; r = r
\end{itemize}

Figure B13. Composition of appears-in-Performance and Performance-is-of-Play

The figure illustrates how composition works: an Actor (at the left) appears in a Performance (middle), and that Performance is of a certain Play (at the right). The meaning of the relation so composed is clear: the Actor performs in a Play, at least in one Performance. 
Remember that you cannot compose just any two relations: if there is no middle ground, then the composition operation is undefined, it has no meaning. 
Those who are familiar with relational database operations will recognize that this composition operation corresponds to the 'natural join' operator.