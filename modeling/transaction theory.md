# Transaction Theory
When specifying an information system, the first three steps are:
1. to create a conceptual model,
2. to define rules, and
3. to define interfaces.

The fourth step is the topic of this chapter: the definition of transactions. That is what this chapter is about. However, this is not yet part of the Ampersand language. We still have to invent that. A discussion on this topic is held on issue #279.

The current language lacks transactions for the following reasons:
1. Ampersand does not allow the specification of a button in such an interface, to invoke a transaction. Examples are buttons such as "print a report", analyze the case file, and compute the mortgage-offering for this customer.
2. Currently, automated transactions are driven by the ExecEngine, which has shown to be a necessary ingredient in making a viable demonstration for almost any application. At the same time, this ExecEngine has proven difficult to use and it does not conform to Ampersand's philosophy.

At the moment we are using this chapter to develop the required theory. We want to incorporate transactions in Ampersand. Over the time to come, this chapter should evolve to the specification and documentation of Ampersand's transaction mechanism. 

# Example: stacks
Let us develop the theory on the basis of a toy problem.

Suppose we want to define buttons in some Ampersand-interface for pushing and popping items from a stack. First we define one stack are.

```
CONCEPT Stack -- set of all stacks
CONCEPT NonEmptyStack -- all stacks that are non-empty
CLASSIFY NonEmptyStack ISA Stack
CONCEPT Item -- items for in the stack
RELATION item :: NonEmptyStack -> Item
RELATION substack :: NonEmptyStack -> Stack
RULE 'EmptyStack' = I[Stack] - I[NonEmptyStack]
-- implicit rule: element EmptyStack exists in Stack
RELATION topStack :: ONE -> Stack
RULE topStack;V[Stack] = topStack;substack*
```

Since relations `item` and `substack` are functions, every nonempty stack has an item and a substack. The first rule states that there is precisely one stack that is not nonempty, which we call the EmptyStack. Typing ensures that the EmptyStack can have no substacks. The second rule states that every stack is (transitively) a substack of the topStack. Consequently, the empty stack is (transitively) a substack of the topStack, hence all stacks are free of cycles.

If we add an interface to this example, we will be able to describe stacks at run-time. They do not necessarily behave as stacks. For instance, we can change items that are not at the top of a stack.

How do we want to specify this problem in a future version of Ampersand? I want it to fit in the philosophy of Ampersand, especially:
1. strongly and statically typed;
2. embedded in relation algebra;
3. progress by adding restrictions.

## Only allow pushing / popping to the stack
We first focus on allowing just one type of transaction. When this is done, we will focus on mixing multiple transactions.

Here is how I could express that only pushing a single element is allowed:
```
RULE pre(substack) \/ post(topStack~);pre(topStack) = post(subtack)
RULE pre(item) = post(item - V;topStack;item)
```
The first rule preserves the structure of substack. The second preserves the structure of item. Note that all expressions in the rules are either inside a ``pre`` or inside a ``post``.

Popping an element is very similar. In fact, we can just switch `pre` and `post` and we are done:
```
RULE post(substack) \/ pre(topStack~);post(topStack) = pre(subtack)
RULE post(item) = pre(item - 'TopStack';item)
```
We could rewrite the rules a little, to see what happens with a `pop` more clearly, but I'll leave them as they are for now.

Unfortunately, we cannot add both the rules for popping and pushing: that would disallow all transactions. Instead, we need a way to distinguish 'we are pushing' from 'we are popping'. I propose the following syntax:

```
TRANSACTION Push
  RULE pre(substack) \/ post(topStack~);pre(topStack) = post(subtack)
  RULE pre(item) = post(item - V;topStack;item)
ENDTRANSACTION
TRANSACTION Pop
  RULE post(substack) \/ pre(topStack~);post(topStack) = pre(subtack)
  RULE post(item) = pre(item - 'TopStack';item)
ENDTRANSACTION
```

Or we could annotate each rule separately:

```
RULE post(substack) \/ pre(topStack~);post(topStack) = pre(subtack) INTRANSACTION Pop
```

This way of annotating rules reminds me of how we add roles to rules.
A question that needs to be answered is: what kind of things are "Push" and "Pop". I have called them transactions here, as they describe a class of transactions. I believe we can mix this with `INTERFACE` names: Push and Pop are simply the names of interfaces, and the Push interface only allows you to Push, while the Pop interface only allows you to Pop. This certainly corresponds to the recent CRUD annotations: those allow you to specify what changes you're allowed to do in a certain interface as well. I can imagine that CRUD will be treated similarly in interfaces as the ``[INJ,SUR,SYM,TRN,..]`` annotations in relation declarations.

I'll leave finding out how the RUD part of CRUD translates to these types of rules as an exercise for the reader (meaning: I think it is possible, but it's too involved for me right now and I want to focus on something else instead.)

# General case
Rules of the form ``post(relation) = pre(..)`` can  be translated into automatic functionality, as such rules describe the new value of ``relation`` exactly. The ampersand engine can try to rewrite the rules to that form as much as possible.

## Comparison with the execEngine
Note that this approach is so general, that the current execEngine rules could be neatly expressed in this form:
``post(someRelation) = pre(someRelation) - stuffThatNeedsToBeDeleted \/ stuffThatNeedsToBeInserted``
There are two exceptions to this:

1. execEngine rules that caused a chain of events cannot be expressed this way, or rather: this new approach does not take steps recursively. You should express everything in one step.
2. execEngine rules that used to change pairs that are not visible in the interface, may not work. I'm not sure about this one, since it is very implementation dependent. In any case, if there is any non-determinism outside of what you can see, there is a problem (although we might consider showing relations that fall outside of the visible region in such cases)


# Implementation details

## Runtime
On runtime, we might consider using some sort of SAT-solving techniques to determine whether ``post(relation)`` is uniquely determined by the rules and by what the user already entered about ``post(otherstuff)``.

Currently, we check all rules after each transaction. If a rule is violated, it needs to be restored. For these new types of rules, we can do the same kind of check, but we will need to remember the `pre` state of the database as well.

Regular rules are checked by just looking at the `post` state, so we don't need any separate code to check the regular (invariant) rules.
The SAT-based implementation would also implement most of the AMBER ideas.

## Compile time
A problem for the type checker is that ``pre(I[A])`` and ``post(I[A])`` can be different. I propose that for each concept ``A``, four types are added:
``A_pre``, ``A_post``, ``A_min`` and ``A_max``. Let's first focus on ``A_pre`` and ``A_post``, I'll explain the other two later. While every relation must occur in a ``pre`` or a ``post``, operations do not. In some ways, `I` and `V` are considered nullary operations. This means that we should allow the last step in the following rewrite sequence (for ``a::A*A`` and ``b::A*A``):

```
pre(a;I;b) = pre(a);pre(I;b)
           = pre(a);pre(I);pre(b)
           = pre(a);I;pre(b)
```

Note that while ``I`` appears outside a ``pre``, we can still see from its type the the ``pre`` version of `I` is intended here.

So if we allow `I` and `V` to occur outside `pre` and `post`, what would happen if I were to write something like ```pre(a);I;post(b)```? We want this to be equivalent to ```pre(a);post(b)```, because math. This is where ``A_min`` comes in. The ``I`` in ``pre(a);I;post(b)`` can get the type ``A_min``, causing us to allow such an expression. The ``A_min`` is the intersection between ``A_pre`` and ``A_post``, while ``A_max`` is the union of the two.