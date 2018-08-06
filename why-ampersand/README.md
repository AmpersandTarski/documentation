---
description: >-
  What is the purpose of Ampersand? What do you gain by using it? This chapter
  helps you to assess whether Ampersand is worth your while.
---

# Why Ampersand?

The purpose of Ampersand is to help business engineers deliver correct information systems. Correct means that the system complies demonstrably to the rules of the business. How cool is that!

## Some examples of information systems built in Ampersand

* [Medications](http://www.ssi-lab.nl/CZ/#/), a demonstrator built by TNO in Ampersand to showcase attestation on the internet. This example is undocumented.
* [SETU standards](https://setu.t4smm.nl/), a site to disclose standards for electronic messaging in the sector of flexible labour. This example is undocumented.
* [RAP3](http://rap.cs.ou.nl/RAP3), a tool for students to learn how to work with Ampersand. This project is documented in https://github.com/AmpersandTarski/RAP.

## How does it work?

Ampersand is a way of designing information systems for enterprises, supported by a method, a tool, and a course.

1. Communicate with the business _**in their own language**_. Define a domain language to consolidate agreement of terms among stakeholders. 
2. _**Formalize**_ the agreements that are relevant for the information system using Ampersand-script.  
3. Generate a real and working _**prototype**_ of your information system at the push of a button. 
4. Use this prototype for _**walking through**_ user stories, acceptance testing, requirements elicitations, to name just some of its uses.
5. Use the documented ontology that Ampersand generates to _**validate**_ the agreed rules.

## Benefits

1. Your system is _**adaptable**_. Even changes in your conceptual model \(viz. data model\) are brought in production quickly.
2. Support _**your own**_ business, rather than someone else's view on your business. Designing with [_business rules_](http://www.businessrulesgroup.org/brmanifesto/BRManifesto.pdf) lets your business associates convince themselves that the system supports exactly the right rules.
3. _**Decrease maintenance cost and increase understanding**_, by describing goals instead of steps. Ampersand is a [declarative](https://github.com/ampersandtarski/documentation/tree/662a3e7bdf67bf950cfc029e4c51efc919c0bf53/Conceptual/why-declarative.md) language, which yields simplicity without sacrificing precision.
4. Develop _**more efficiently**_ by preventing errors instead of correcting them. Enjoy the benefits of _strong and static typing_. Several scientific studies show significant effects of strong and static typing on the total cost of ownership of your design. Besides, it enables Ampersand to generate efficient code.  
5. Gain mathematical _**certainty of compliance**_. Ampersand uses _relation algebra_ to align the IT-system to the business, by exploiting its natural language interpretation alongside its technical interpretation as working software. Your claim that business stakeholders understand \(solely in natural language\) what the computer does \(in software\) can't be made more convincingly.
6. _**Reduce risk**_ by developing in _small increments_. Add constraints, user-interfaces, relations, and other design elements one at a time. Generate a prototype at any intermediate stage, to try out your system long before it is finished.  
7. _**Reduce risk**_ by dividing the work in small subsystems. To isolate subsystems is easy, due to [_conceptual independence_](http://dl.acm.org/citation.cfm?id=2946158.2946405). Ampersand lets you combine subsystems into larger systems, automating the burden of combining them.  Reuse _design patterns_ to assemble systems, rather than re-invent from scratch.

## Foundations

Ampersand is grounded in Relation Algebra. Scientific foundations of Ampersand have been published in the International Conference on Relation Algebraic Methods in Computer Science \([RAMiCS](http://www.ramics-conference.org/)\) from 2011 onwards.

Ampersand is a tool for rule based design. It adheres closely to the concept of business rule as defined by the Business Rules Group. The [following section](business-rules-in-ampersand.md) explains the correspondence between the Business Rules Manifesto and Ampersand.

The Open University of the Netherlands has a [course in Rule Based Design](https://www.ou.nl/-/IM0403_Rule-Based-Design), in which students use Ampersand for this purpose.

## Licenses

Ampersand is freely available as an [open source project in GitHub](https://github.com/AmpersandTarski). 

