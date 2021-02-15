# Boolean operators in algebra

## Union

The operator $$\cup$$ \(union\) is commutative, associative, and idempotent:

1. \(commutativity of $$\cup$$\)     $$r\cup s\ =\ s\cup r$$
2. \(associativity of $$\cup$$\)        $$r\cup (s\cup t)\ =\ (r\cup s)\cup t$$
3. \(idempotence of $$\cup$$\)        $$r\cup r\ =\ r$$

## Difference

The difference $$r-s$$ is the smallest relation $$t$$ that satisfies $$r\ \subseteq\ s\cup t$$. Smallest means: If there is a $$t'$$ for which $$s\cup t'=r$$, this implies that $$t\cup t'=t'$$.

## Intersection

The intersection $$\cap$$ is defined as: $$r \cap s = r-(r-s)$$

## Complement

The complement operator is defined as $$\overline{t} = V_{[A\times B]} - t$$. The type $$[A\times B]$$ comes from the term\(s\) in which $$t$$ is embedded. If that type does not exist or if it is ambiguous, Ampersand will refuse to compile with an appropriate error message.

## How to type boolean operators in your script

[This page](../#notation-on-the-keyboard) shows how you can write these things in your Ampersand script.

## Other explanation

