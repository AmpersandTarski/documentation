# Which types of rule are there?

Taking a dictionary definition of the word "rule" gives a broad spectrum of things:

* a principle or regulation governing conduct, action, procedure, arrangement, etc. \[[dictionary.com](http://www.dictionary.com/browse/rule)\]
* a prescribed guide for conduct or action \[[Merriam-Webster dictionary](https://www.merriam-webster.com/dictionary/rule)\]
* an accepted principle or instruction that states the way things are or should be done, and tells you what you are allowed or are not allowed to do \[[Cambridge dictionary](http://dictionary.cambridge.org/dictionary/english/rule)\]
* A principle that operates within a particular sphere of knowledge, describing or prescribing what is possible or allowable.  \[[Oxford dictionary](https://en.oxforddictionaries.com/definition/rule)\]

What these definitions have in common is:  
1. a rule constrains. It may constrain various things such as behaviour, procedure, conduct, to name but a few.  
2. a rule prescribes. So, rules that are broken must be fixed.  
3. none of these definitions state how to enforce a rule, i.e. how to fix the situation such that the rule is satisfied.

The Cambridge definition is more specific than the other two. It says "A rule states the way things are", which brings us to the most general type of rule: constraint. This corresponds with Oxford's definition. The latter adds an important remark: "within a particular sphere of knowledge". This is what we call a context. Every rule requires a context in which we can determine whether the rule is satisfied or broken. Example: in the context of the game of chess, there is a piece called "Rook". Outside that context, the word "Rook" may not even exist.

The definitions also say that a rule governs action rather than just anything. We call such a rule a "procedure". It constrains the way things should be done. We take a procedure to be a specific type of constraint, because it constrains action and conduct rather than anything else.

Ampersand works with formal rules to generate information systems, to evaluate whether a rule is satisfied, and to predict possible inconsistencies. A rule is formal if:

* it is written in a [formal language](https://en.wikipedia.org/wiki/Formal_language). The rule is a list of strings of symbols, which obeys the rules specific to that language.
* there is an [algorithm](http://www.dictionary.com/browse/algorithm) to determine satisfaction of a rule.

The rules that are not formal include legal rules, rules in natural language, and business rules. In Ampersand you write formal and informal rules. For every formal rule in Ampersand you can specify the meaning in natural language. This yields an invaluable piece of documentation, which allows you to discuss rules with stakeholders exclusively in natural language.

## Types of rule
The previous exposition shows four different types of rules,
each having distinct characteristics. 

|  | formal | not formal |
| :--- | :--- | :--- |
| constraint | predicate, condition | business rule, regulation |
| procedure | algorithm, decision rule, procedure, production rule | instruction, procedure |

Let us briefly go through the characteristics of each rule type.

A **formal constraint** is called "predicate" or "condition", because there is an algorithm to compute whether it is satisfied. In case of a condition, that is called "true" rather than "satisfied".

A  **constraint that is not formal** may be ambiguous. How do you assess whether Jackie Huffolack stole the painting of Matisse? How do you assess whether a goal has been scored in a game of soccer? The truth of an informal constraint cannot be computed, but depends on someone's decision. Whether that someone is a judge, a referee, or you or me is secondary.

A **formal procedure** is a rule that can be executed by a suitable computer.

A **procedure that is not formal** includes instructions for human agents. Only if an equivalent formal procedure exists, can it be executed by a computer.

# Assignment
Go to the internet and find 3 different examples of the four rule types we discussed. That gives you twelve rules. Make sure that your twelve examples all have a different context in which they apply. For every example:

1. copy the rule
2. give the context (must be unique among your twelve examples)
2. If applicable, briefly explain things to make your work readable to outsiders.
3. explain why it is formal or not, and whether it is a procedure or a constraint.

## What have you learned?
After finishing your assignment, you have learned:

* to define the concept of rule by the property that it constrains things and it prescribes things;
* that enforcement of a rule is not contained in its definition;
* to classify rules in the category formal/not formal;
* to classify rules in the categories procedure or constraint;
* to explain why a procedure is a special kind of constraint.


