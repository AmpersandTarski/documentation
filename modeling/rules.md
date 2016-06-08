# Rules

A rule is a Statement that must be true in the Context in which it is valid.
A rule differs from a statement in that it must always be true.
Example:
* The statement "St. Paul street is a one way street." might be either true or false. We just have to check the road signs on St. Paul street to know. If, however, the city council decides that St. Paul street is a one way street, we have a rule. It is a rule because St. Paul street **must be** a one way street. As long as the appropriate road signs are absent, the situation on the street contradicts the decision of the city council. 

The word *must* implies that there is someone who says so.
In this example, the city council, by the authority invested upon it by the law, says that St. Paul street must be a one way street.
The people who are affected by this are called stakeholders.
All contexts in which this rule is valid are called the scope of this rule.
Outside its scope, a rule has no meaning.
For example a rule may be valid in downtown St. Catharines, Ontario, but totally meaningless in Smalltown, NY that does not even have a St. Paul street.

Every rule is denoted both as a statement in natural language (i.e. free text) as well as a formal expression. The Ampersand modeler is responsible that the semantics of both ways to express a rule is equivalent.

The formal expression of a rule uses relations that must be declared in the model. Ampersand will make sure that the types of the relations used in a rule are logically correct. Whenever the relations are populated with data, Ampersand will detect violations of any rule in the model. 

Basically, there are two distinct ways to handle violations of rules. Based on the way a rule is enforced, the rule is categorized in different ways:
 
 1. **Invariant rule**. A rule that is guaranteed to be true at all times. Whenever an action would cause a violation of the rule, that action is forbidden.  
 2. **Process rule**. A rule that may be (temporarily) violated. A violation of a rule will be signaled to the maintainer of that rule. It simply shows work that has to be done. 

In Ampersand, the default way of enforcement is as an invariant. A rule can be specified to be a process rule, by specifying what role should maintain the rule. 

