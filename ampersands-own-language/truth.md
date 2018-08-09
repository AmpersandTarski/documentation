# Truth



A fact is a statement that is true. This [video clip](https://player.ou.nl/wowzaportlets/#!production/An9G5DT) illustrates the idea.

Let us consider a fact "Joe Smith lives in New York." from an Ampersand perspective. In Ampersand, we can analyse this as follows:

* Let `Person` and `City` be **concepts**
* `Joe Smith` is an **atom** of the concept `Person` and `New York` is an **atom** of the concept `City`.
* Let us use the **relation** `livesIn[Person*City]` to contain our fact.
* `livesIn` is the **relation name** and `[Person*City]` is the **signature** of this relation.
* If the pair `(Joe Smith,New York)` is an element of this relation, Ampersand considers the statement Joe Smith livesIn New York to be true. So all pairs in a relation represent facts.

