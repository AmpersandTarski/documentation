# Rules

Rules are useful to turn a heap of data into meaningful information. For that purpose, you must understand how rules help you to determine whether a statement is true. This section deals with formal rules only. The attraction of formal rules is that computers can be used to compute which statements are true. We shall go into the details to understand how this works.

Let us first discuss some words that allow us to talk about rules .These are: true, false, valid, scope, stakeholder, statement, and rule. We will use these words in their conventional meaning, but in a more precise way than some people do.

A rule is a statement that must be true in the context in which it is valid.  
So, a rule differs from a statement, because a statement can be either true or false.  
Example:

* The statement "St. Paul street is a one way street." might be either true or false. We just have to check the road signs on St. Paul street to know. If, however, the city council of the City of St. Catharines decides that St. Paul street is a one way street, we have a rule. It is a rule because St. Paul street **must be** a one way street. 
  The word _must_ implies that there is someone who says so: the authority that imposes the rule.
* In this example, the city council of St. Catharines, by the authority invested upon it by the law, has ordained that St. Paul street must be a one way street.
* The people who are affected by this are called stakeholders.
* The City of St. Catharines is the scope of this rule, because that is where this rule is valid.
* Outside the City of St. Catharines \(the scope\), this rule has no meaning.
  For example, in Smalltown, NY , this rule is meaningless. There, the rule doesn't even make sense because Smalltown, NY , does not even have a St. Paul street.

Every rule is denoted in Ampersand both as a statement in natural language \(i.e. free text\) as well as a formal expression. The Ampersand modeler is responsible that the semantics of both ways to express a rule is equivalent.

The formal expression of a rule uses relations that must be declared in the model. Ampersand will make sure that the types of the relations used in a rule are logically correct. Whenever the relations are populated with data, Ampersand will detect violations of any rule in the model.

## Enforcement

How does one enforce rules on a heap of data? How to ensure that a rule remains true?

There are multiple ways to handle violations of rules. Based on the way a rule is enforced, the rule is categorized in different ways:

1. **Axiom**. A rule that is true by definition is called an axiom. It requires no enforcement to be true. It simply is true at all times. There is no conceivable data space that violates an axiom.
2. **Invariant rule**. A rule that is guaranteed to be true at all times. Whenever an action would cause a violation of the rule, that action is forbidden. Application software is required for this. If that software is flawed, invariants may be violated.
3. **Process rule**. A rule that may be \(temporarily\) violated. A violation of a rule will be signaled to the maintainer of that rule. It simply shows work that has to be done.
4. **Automated rule**. This is also known as a decision rule or a computational rule. Upon violation, a computer kicks in instantaneously to restore its truth.



