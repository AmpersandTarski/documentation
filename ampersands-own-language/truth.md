---
description: >-
  An information system should store "the truth" about the business it supports.
  If you want to design and build such systems, you should know a few things
  about truth ...
---

# Truth

First, consider the distinction between [sensible and senseless statements](https://player.ou.nl/wowzaportlets/#!production/VDvSFqQ). A sensible statement is one that we can consider either true or false. \(we can say: it makes sense\).

Ampersand lets you describe a set of sensible statements. That constitutes your [_language_](https://player.ou.nl/wowzaportlets/#!production/xqW5z2v). True statements in that language are called _facts_. These are the ones that are stored in the system you define. This [video clip](https://player.ou.nl/wowzaportlets/#!production/An9G5DT) illustrates the idea.

Let us consider a fact "Joe Smith lives in New York." from an Ampersand perspective. In Ampersand, we can analyse this as follows:

* Let `Person` and `City` be **concepts**
* `"Joe Smith"` is an **atom** of the concept `Person` and `"New York"` is an **atom** of the concept `City`.
* Let us use the **relation** `livesIn[Person*City]` to contain our fact.
* `livesIn` is the **relation name** and `[Person*City]` is the **signature** of this relation.
* If the pair `("Joe Smith","New York")` is an element of this relation, Ampersand considers the statement Joe Smith livesIn New York to be true. So all pairs in a relation represent facts.

Example:

* The statement "St. Paul street is a one way street." might be either true or false. We just have to check the road signs on St. Paul street to know. If, however, the city council of the City of St. Catharines decides that St. Paul street is a one way street, we have a rule. It is a rule because St. Paul street **must be** a one way street.

  The word _must_ implies that there is someone who says so: the authority that imposes the rule.

* In this example, the city council of St. Catharines, by the authority invested upon it by the law, has ordained that St. Paul street must be a one way street.
* The people who are affected by this are called stakeholders.
* The City of St. Catharines is the scope of this rule, because that is where this rule is valid.
* Outside the City of St. Catharines \(the scope\), this rule has no meaning.

  For example, in Smalltown, NY , this rule is meaningless. There, the rule doesn't even make sense because Smalltown, NY , does not even have a St. Paul street.

