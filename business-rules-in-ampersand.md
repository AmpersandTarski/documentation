---
description: >-
  How does Ampersand implement the Business Rules Manifesto? This chapter has
  some answers
---

# Business Rules in Ampersand

Ampersand lets you use business rules as intended in the [Business Rules Manifesto](http://www.businessrulesgroup.org/brmanifesto/BRManifesto.pdf) \(by the Business Rules Group, 2003\). This chapter quotes each article from the manifesto verbatim. Besides, it describes how Ampersand implements it, 

| **Primary Requirements, Not Secondary** |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1.1.   | Rules are a first-class citizen of the requirements world. |
| Ampersand says: | First-class means that every requirement is a rule and every rule is a requirement. An Ampersand-engineer makes a requirement concrete by specifying a constraint. At design time, these constraints must be consistent and Ampersand's type system helps out by signalling those inconsistencies. At runtime violations of constraints are signalled the moment they occur.  |
| 1.2.   | Rules are essential for, and a discrete part of, business models and technology models. |
| Ampersand says: | A business process is a group of people \(stakeholders\) who work together on the basis of agreed rules. Ampersand rules cover the discrete \(i.e. yes or no\) rules and produces an information system to guard those rules. |
| **Separate From Processes, Not Contained In Them** |  |
| 2.1.   | Rules are explicit constraints on behavior and/or provide support to behavior. |
|  | Each rule in Ampersand is a constraint, the violations of which are computed \(in real time\) and signalled to the appropriate stakeholder. Support is provided by different types of enforcement. |
| 2.2.   | Rules are not process and not procedure.  They should not be contained in either of these. |
|  | In Ampersand you define rules, not processes and not procedures. |
| 2.3.   | Rules apply across processes and procedures.  There should be one cohesive body of rules, enforced consistently across all relevant areas of business activity. |
|  | A rule applies throughout its context. Outside a context it is meaningless. If several processes and procedures are valid in a particular context, all rules of that context apply to all of them. |
|  |  |
| **Deliberate Knowledge, Not A By-Product** |  |
| 3.1.   | Rules build on facts, and facts build on concepts as expressed by terms. |
|  | Ampersand adheres to the principles of logic. Facts are true statements. Assuming that the data entered in an information system is true, Ampersand preserves that truth with mathematical rigor. If false data \(i.e. non-facts\) are entered into an information system built by Ampersand, the software will detect every inconsistency caused by that falsehood. Facts in Ampersand constitute the population of relations. Relations exist between concepts. Rules are expressed by terms in which operators link relations into meaningful expressions. |
|  |  |
| 3.2.   | Terms express business concepts; facts make assertions about these concepts; rules constrain and support these facts. |
|  | If the Ampersand-engineer works on a business problem, she uses the concepts of the business as concepts in Ampersand.  |
| 3.3.   | Rules must be explicit.  No rule is ever assumed about any concept or fact. |
|  |  |
| 3.4.   | Rules are basic to what the business knows about itself — that is, to basic business knowledge. |
|  |  |
| 3.5.   | Rules need to be nurtured, protected, and managed. |
|  |  |
| **Declarative, Not Procedural** |  |
| 4.1.   | Rules should be expressed declaratively in natural-language sentences for the business audience. |
|  |  |
| 4.2.   | If something cannot be expressed, then it is not a rule. |
|  |  |
| 4.3.   | A set of statements is declarative only if the set has no implicit sequencing. |
|  |  |
| 4.4.   | Any statements of rules that require constructs other than terms and facts imply assumptions about a system implementation. |
|  |  |
| 4.5.   | A rule is distinct from any enforcement defined for it.  A rule and its enforcement are separate concerns. |
|  |  |
| 4.6.   | Rules should be defined independently of responsibility for the who, where, when, or how of their enforcement. |
|  |  |
| 4.7.   | Exceptions to rules are expressed by other rules. |
|  |  |
| **Well-Formed Expression, Not Ad Hoc** |  |
| 5.1.   | Business rules should be expressed in such a way that they can be validated for correctness by business people. |
|  |  |
| 5.2.   | Business rules should be expressed in such a way that they can be verified against each other for consistency. |
|  |  |
| 5.3.   | Formal logics, such as predicate logic, are fundamental to well-formed expression of rules in business terms, as well as to the technologies that implement business rules. |
|  |  |
| **Rule-Based Architecture, Not Indirect Implementation** |  |
| 6.1.   | A business rules application is intentionally built to accommodate continuous change in business rules.  The platform on which the application runs should support such continuous change. |
|  |  |
| 6.2.   | Executing rules directly — for example in a rules engine — is a better implementation strategy than transcribing the rules into some procedural form. |
|  |  |
| 6.3.   | A business rule system must always be able to explain the reasoning by which it arrives at conclusions or takes action. |
|  |  |
| 6.4.   | Rules are based on truth values.  How a rule's truth value is determined or maintained is hidden from users. |
|  |  |
| 6.5.   | The relationship between events and rules is generally many-to-many. |
|  |  |
| **Rule-Guided Processes, Not Exception-Based Programming** |  |
| 7.1.   | Rules define the boundary between acceptable and unacceptable business activity. |
|  |  |
| 7.2.   | Rules often require special or selective handling of detected violations.  Such rule violation activity is activity like any other activity. |
|  |  |
| 7.3.   | To ensure maximum consistency and reusability, the handling of unacceptable business activity should be separable from the handling of acceptable business activity. |
|  |  |
|  |  |
| **For the Sake of the Business, Not Technology** |  |
| 8.1.   | Rules are about business practice and guidance; therefore, rules are motivated by business goals and objectives and are shaped by various influences. |
|  |  |
| 8.2.   | Rules always cost the business something. |
|  |  |
| 8.3.   | The cost of rule enforcement must be balanced against business risks, and against business opportunities that might otherwise be lost. |
|  |  |
| 8.4.   | ‘More rules’ is not better.  Usually fewer‘good rules’ is better. |
|  |  |
| 8.5.   | An effective system can be based on a small number of rules.  Additional, more discriminating rules can be subsequently added, so that over time the system becomes smarter. |
|  |  |
| **Of, By, and For Business People, Not IT People** |  |
| 9.1.   | Rules should arise from knowledgeable business people. |
|  |  |
| 9.2.   | Business people should have tools available to help them formulate, validate, and manage rules. |
|  |  |
| 9.3.   | Business people should have tools available to help them verify business rules against each other for consistency. |
|  |  |
| **Managing Business Logic, Not Hardware/Software Platforms** |  |
| 10.1.   | Business rules are a vital business asset. |
|  |  |
| 10.2.   | In the long run, rules are more important to the business than hardware/software platforms. |
|  |  |
| 10.3.   | Business rules should be organized and stored in such a way that they can be readily redeployed to new hardware/software platforms. |
|  |  |
| 10.4.   | Rules, and the ability to change them effectively, are fundamental to improving business adaptability. |
|  |  |
|  |  |

