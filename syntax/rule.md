# The RULE statement

## Purpose
Rules are used as a concrete reason for people to act, feel or believe. In philosophy, this is called a [norm (philosophy)](https://en.wikipedia.org/wiki/Norm_(philosophy)).

## Ampersand Definition
A rule is a [[Statement|statement]] that must be true in each [[Context|context]] in which it is valid.

## Explanation
A rule differs from a statement in that it must always be true.
Example:
* The statement "St. Paul street is a one way street." might be either true or false. We just have to check the road signs on St. Paul street to know. If, however, the city council decides that St. Paul street is a one way street, we have a rule. It is a rule because St. Paul street ''must be'' a one way street. As long as the appropriate road signs are absent, the situation on the street contradicts the decision of the city council. 

The word *must* implies that there is someone who says so.
In this example, the city council, by the authority invested upon it by the law, says that St. Paul street must be a one way street.
The people who are affected by this are called stakeholders.
All contexts in which this rule is valid are called the scope of this rule.
Outside its scope, a rule has no meaning.
For example a rule may be valid in downtown St. Catharines, Ontario, but totally meaningless in Smalltown, NY that does not even have a St. Paul street.


Formally, a rule r can be seen as an **expression** that is valid within a [Context]().
Valid means that every [[Population|population]] of a [[Context|context]] satisfies the [[Expression|expression]] r, (i.e. it is true for any population).
For every rule r, it is:  <nowiki>V |- r</nowiki>

=={{syntaxHeader|version=1}}==

[[File:V1 Rule.JPG|600px|right|click image for full size]]
=== links ===
* {{syntax|production=Expression|version=1}}
<br clear="right" />
=== Example ===
<syntaxhighlight lang="ampersand">
RULE "order based delivery" MAINTAINS  provided  |- accepted;of~
EXPLANATION "For every delivery a provider has made, there exists an accepted order."
</syntaxhighlight>

=={{syntaxHeader|version=2}}==

[[File:V2 Rule.JPG|600px|right|click image for full size]]

<br clear="right" />
=== Example ===
<syntaxhighlight lang="ampersand">
RULE "order based delivery":  provided  |- accepted;of~
PHRASE IN ENGLISH "For every delivery a provider has made, there exists an accepted order."
</syntaxhighlight>

=== How to specify the purpose of a rule ===
A requirements engineer should be aware of the purpose of each and every rule he proposes to capture a specific agreement (of the stakeholders).
He can describe the purpose as follows:
<syntaxhighlight lang="ampersand">
PURPOSE RULE "order based delivery" IN ENGLISH
{+In this context, providers only deliver when there is an order.
So, if a delivery is made by a provider, we assume the existence
of an order that is accepted by that provider.-}
</syntaxhighlight>






[[Category:SyntaxV1]]
