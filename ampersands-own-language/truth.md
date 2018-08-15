---
description: >-
  An information system should store "the truth" about the business it supports.
  If you want to design and build such systems, you should know a few things
  about truth ...
---

# Truth

If an information system should represent the truth, its designer must know a thing or two about truth. There is much to be said about that, but Ampersand takes a pragmatic stance on this issue. Only sensible statements can be true or false. So, please consider the distinction between [sensible and senseless statements](https://player.ou.nl/wowzaportlets/#!production/VDvSFqQ). Sentences that are not sensible \(we can say: it is non-sense\) must be avoided by the designer. A sensible statement is one that we can consider either true or false. \(we can say: it makes sense\).

What makes sense to the business are things you can describe in Ampersand. The set of sensible statements constitutes your _language_. True statements in that language are called _facts_. These are the ones that are stored in the system you define. This [video clip](https://player.ou.nl/wowzaportlets/#!production/An9G5DT) illustrates the idea.

Let us introduce some terms. Consider a fact "Joe Smith lives in New York." from an Ampersand perspective. In Ampersand, we can analyse this as follows:

* Let `Person` and `City` be **concepts**
* `"Joe Smith"` is an **atom** of the concept `Person` and `"New York"` is an **atom** of the concept `City`.
* Let us use the **relation** `livesIn[Person*City]` to contain our fact.
* `livesIn` is the **relation name** and `[Person*City]` is the **signature** of this relation.
* If the pair `("Joe Smith","New York")` is an element of this relation, Ampersand considers the statement Joe Smith livesIn New York to be true. So all pairs in a relation represent facts.

