# The CONCEPT statement

## Purpose:

We would like to be able to make assertions about groups of things that have similar properties. For example, we may want to make assertions about individuals that have identified themselves and have submitted a request for sending them an itemized list of goods. In order to do that efficiently, we want to be able to refer to such individuals using a simple, single term, e.g. 'Customer'. Such a term is called a 'concept' in Ampersand.

## Syntax:

`'CONCEPT' <Uppercase identifier> String String?`

## Semantics

This statement lets you define a Concept, i.e. a set that contains things (called 'atoms' in Ampersand).

* `<Uppercase identifier>` specifies the name of the concept
* `String` is a definition of the concept. While you can put anything here, it is a good practice to specify this text such that it can replace any occurrance of the `<Uppercase identifier>` when that appears in a sentence.
* `String?` is an \(optional\) reference to the document that made you define the concept as you did.

## Example

` CONCEPT Organization "one or more people that work together to (directly) achieve specific objectives"`

` CONCEPT Criterion "a standard on which a judgment or decision may be based" "Merriam-Webster"`

## Miscellaneous

* Concepts may be defined anywhere within the context. 
* The name of a concept starts with an uppercase.
* The description will be printed in the functional specification.



