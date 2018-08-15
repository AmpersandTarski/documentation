---
description: >-
  An information system should store "the truth" about the business it supports.
  If you want to design and build such systems, you should know a few things
  about truth ...
---

# Truth

If an information system must represent the truth, its designer must know a thing or two about truth. First, consider the distinction between [sensible and senseless statements](https://player.ou.nl/wowzaportlets/#!production/VDvSFqQ). A sensible statement is one that we can consider either true or false. \(we can say: it makes sense\).

The things you describe in Ampersand should make sense to the business. The set of sensible statements constitutes your _language_. True statements in that language are called _facts_. These are the ones that are stored in the system you define. This [video clip](https://player.ou.nl/wowzaportlets/#!production/An9G5DT) illustrates the idea.

Let us introduce some terms. Consider a fact "Joe Smith lives in New York." from an Ampersand perspective. In Ampersand, we can analyse this as follows:

* Let `Person` and `City` be **concepts**
* `"Joe Smith"` is an **atom** of the concept `Person` and `"New York"` is an **atom** of the concept `City`.
* Let us use the **relation** `livesIn[Person*City]` to contain our fact.
* `livesIn` is the **relation name** and `[Person*City]` is the **signature** of this relation.
* If the pair `("Joe Smith","New York")` is an element of this relation, Ampersand considers the statement Joe Smith livesIn New York to be true. So all pairs in a relation represent facts.

RULE

