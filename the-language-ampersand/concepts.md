# Concepts

## Purpose

To classify things is the main purpose of concepts. For instance, we might classify object 29843a as a rental contract and "Peter" as a person. Also, we might want to say that a rental contract is a contract, meaning that every instance of a rental contract is an instance of a contract too. More importantly, each relation that applies to a contract apply to every rental contract as well.

## Description

A _**concept**_ is a name for similar things. For example: `"Peter"`, `"John"`, and `"Barack"` are things \([atoms](atoms.md)\) you might want to call `Person` \(a concept\). We call `"Peter"`, `"John"`, and `"Barack"` instances of the concept `Person`, whereas `"45-NP-88"` and `"KD-686-D"` could be instances of the concept `LicensePlate`.

A _**concept statement**_ is used to explain a concept in natural language to a business stakeholder.

A _**classification statement**_ is used to specialize concepts.

## Examples

```text
CONCEPT Criterion "A criterion is a standard on which a judgment or decision may be based." "Merriam-Webster"
```

```text
CONCEPT Organization "An organization is a collection of persons that work together to achieve specific objectives."
```

```text
CLASSIFY Organization ISA LegalEntity
```

## Syntax and meaning

A concept definition provides a "dictionary explanation" for a concept. It may be omitted, because concepts may be used without defining them.

```text
CONCEPT <Uppercase identifier> <String> <String>?
```

This statement may occur anywhere within a context, either inside or outside a pattern. It means that there exists a concept called `<Uppercase identifier>` in the current context.

* `<Uppercase identifier>` specifies the name of the concept.
* `String` contains a definition of the concept. This definition is used by the documentation generator, which expects it to be a grammatically correct and complete sentence.
* `String?` is an \(optional\) reference to the source of the definition. It is meant for traceability.

Each atom that belongs to a concept is called an _instance_ of that concept.

A classification statement allows us to make atoms instances of several concepts at once:

```text
CLASSIFY <Concept> ISA <Concept>
```

This is also known as _generalization_ or _specialization_. The first concept is called the specific concept and the last one is called the generic concept. A generalization means that each instance of a specific concept is an instance of the generic concept as well. For instance, every thing \(atom\) that is a sedan is a car as well, assuming we have `CLASSIFY Sedan ISA Car`.

## Miscellaneous

* The name of a concept starts with an uppercase, to avoid confusion with relation names.
* A concept should be used for immutable things. E.g. use a concept `Person` to express that a person will always be a person and will not change in, let us say, a table. However, don't use `Employee`, because termination of an employee's contract causes a person to be an employee no longer. So employees are not immutable. To be an employee is a dynamic property, so model it as a relation.
* The description part of a concept statement will be printed in the functional specification, so please check that your definition is a complete sentence.
* A concept-statement is not required. If you use a concept without a concept-statement, Ampersand defines it for you \(regardless of whether you defined it or not\).
* Any two atoms, whose concepts share a least generic concept, have the same atomic type. For example: `"Xandra"[Person]` and `"Acme Ltd."[Company]` must have the same atomic type if `Person` and `Company` share a least generic concept such as `"LegalEntity"`.

