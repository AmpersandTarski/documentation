# Transaction Theory
When specifying an information system, the first three steps are:
1. to create a conceptual model,
2. to define rules, and
3. to define interfaces.

The fourth step is the topic of this chapter: the definition of transactions. That is what this chapter is about. However, this is not yet part of the Ampersand language. We still have to invent that.

The current language lacks transactions for the following reasons:
1. Ampersand does not allow the specification of a button in such an interface, to invoke a transaction. Examples are buttons such as "print a report", analyze the case file, and compute the mortgage-offering for this customer.
2. Currently, automated transactions are driven by the Exec-engine, which has shown to be a necessary ingredient in making a viable demonstration for almost any application. At the same time, this exec-engine has proven difficult to use and it does not conform to Ampersand's philosophy.

At the moment we are using this chapter to develop the required theory. We want to incorporate transactions in Ampersand. Over the time to come, this chapter should evolve to the specification and documentation of Ampersand's transaction mechanism. 

## Problem definition
Let us develop the theory on the basis of a toy problem.

Suppose we want to define buttons in some Ampersand-interface for pushing and popping items from a stack. The following (Haskell style) specification applies:

    push :: Stack -> Item -> Stack
    pop :: Stack -> (Stack,Item)
    empty :: Stack

For every `s::Stack` and `i::Item`, the following invariant holds:

    pop (push (s,i)) = (s,i)

How do we want to specify this problem in a future version of Ampersand? I want it to fit in the philosophy of Ampersand, especially:
1. strongly and statically typed;
2. embedded in relation algebra;
3. progress by adding restrictions.
