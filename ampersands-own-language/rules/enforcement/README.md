# Enforcement



### 

How does one enforce rules? How to ensure that a rule remains true?

There are multiple ways to handle violations of rules. Based on the way a rule is enforced, the rule is categorized in different ways:

1. **Axiom**. A rule that is true by definition is called an axiom. It requires no enforcement to be true. It simply is true at all times. There is no conceivable data space that violates an axiom.
2. **Invariant rule**. A rule that is guaranteed to be true at all times. Whenever an action would cause a violation of the rule, that action is forbidden. Application software is required for this. If that software is flawed, invariants may be violated.
3. **Process rule**. A rule that may be \(temporarily\) violated. A violation of a rule will be signaled to the maintainer of that rule. It simply shows work that has to be done.
4. **Automated rule**. This is also known as a decision rule or a computational rule. Upon violation, a computer kicks in instantaneously to restore its truth.

### 

## Assignment

There is a script, [Delivery](../../../exercises/delivery.md), which describes an information system in which clients and vendors can trade. Clients can place orders, which vendors can accept and deliver. We will use this script to practice with:

1. understanding rules
2. documenting rules
3. generating functional specifications.

### What have you learned?

After finishing your assignment, you have learned:

* to explain the similarity and the difference between a statement an a rule;
* to use the words true, false, valid, scope, stakeholder, statement, and rule in a meaningful way;
* to recall and explain four distinct ways of enforcing rules.

