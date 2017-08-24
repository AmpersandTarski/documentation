# Ten reasons for Ampersand

The purpose of Ampersand is to help business architects deliver. Ampersand lets you design information systems that actually do what users want. It allows you to offer information systems to the business that comply provably to the rules by which they conduct their business. And it lets you work fast. How cool is that!

How does it work?

1. Communicate with the business in their own language. Define a _domain language_[^1] to consolidate agreement of terms among stakeholders. Ampersand formalizes part of the business language  that is used in the information system. Ampersand gives you a \(documented\) ontology.  
2. Generate a real and working _prototype_ of your information system at the push of a button. Use this prototype for walking through user stories, acceptance testing, requirements elicitations, to name just some of its uses.
3. Express your design in [_business rules_](http://www.businessrulesgroup.org/brmanifesto/BRManifesto.pdf) to let anyone concerned convince herself that the system supports the right rules.
4. Define your information system in a [_declarative_](/why-declarative.md "Why Declarative?") language. Why specify all the steps towards your goal when you can specify that goal directly?
5. Enjoy the benefits of _strong and static typing_. Several scientific studies[^2,][^3] show significant effects of strong and static typing on the total cost of ownership of your design. Besides, it enables Ampersand to generate efficient code.  
6. Use _relation algebra_[^4] to align the IT-system to the business, by exploiting its natural language interpretation alongside its technical interpretation as working software. Your claim that business stakeholders understand \(solely in natural language\) what the computer does \(in software\) can't be made more convincingly.
7. Develop in _small increments_. Add constraints, user-interfaces, relations, and other design elements one at a time. Generate a prototype at any intermediate stage, to visualize your design long before it is finished.  
8. Design subsystems[^5] in isolation, due to [_conceptual independence_](http://dl.acm.org/citation.cfm?id=2946158.2946405). Ampersand lets you combine subsystems into larger systems, automating the burden of combining them.  Reuse _design patterns_ to assemble systems, rather than re-invent from scratch. 
9. Document your design embedded in the specification, so you always have up-to-date _documentation_ which is consistent with your design.
10. Specify with mathematical rigor, without being a mathematician. Ampersand gives you correctness and consistency in return, with mathematical provability to back it up.

#### Footnotes

[^1]: A domain language is the business language upon which stakeholders can agree. This is usually a small subset of the actual business language, because you only use the part that is relevant in your information system.

[^2]: Hanenberg, S., Kleinschmager, S., Robbes, R., Tanter, E., Stefik, A., 2014. An empirical study on the impact of static typing on software maintainability. Empirical Software Engineering 19 \(5\), 1335–1382.

[^3]: Petersen, P., Hanenberg, S., Robbes, R., 2014. An empirical comparison of static and dynamic type systems on api usage in the presence of an ide: Java vs. groovy with eclipse. In: Proceedings of the 22Nd International Conference on Program Comprehension. ICPC 2014. ACM, New York, NY, USA, pp. 212–222.

[^4]: Schmidt, G., Hattensperger, C., Winter, M., 1997. Heterogeneous relation algebra. In: Brink, C., Kahl, W., Schmidt, G. \(Eds.\), Relational Methods in Computer Science. Advances in Computing. Springer-Verlag, Wien, New York, pp. 39–53, iSBN 3-211-82971-7.

[^5]: Think of subsystems as in a car: it consists of a fuel-subsystem, a climate-subsystem, a comfort-subsystem, an electrical subsystem, etcetera. Think of subsystems as in a human body: it consists of a circulatory system, a muscle system, a nervous system, etcetera.

