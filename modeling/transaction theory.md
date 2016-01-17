# Transaction Theory
In the process of specifying an information system, the first three steps were to create a conceptual model, to define rules, and to define interfaces. The fourth step is the topic of this chapter: the definition of transactions. That is what this chapter is about.

Currently, we still have to invent this part of the language. It is clear that the current language is not powerful enough yet, for the following reasons:
1. Ampersand allows the definition of a data-space by means of concepts and relations. It allows the definition of rules in the form of constraints. It allows the definition of interfaces and it employs the front-end to embody the interfaces as user-interfaces in a webapplication in a standardized manner. However, Ampersand does not allow the specification of a button in such an interface, to invoke a transaction. Examples are buttons such as "print a report", analyze the case file, and compute the mortgage-offering for this customer.
2. Currently, this omission is filled (in part) by the Exec-engine, which has shown to be a necessary ingredient in making a viable demonstration for almost any application. At the same time, this exec-engine has proven difficult to use.

At the moment we are using this chapter to develop the required theory for incorporating transations in Ampersand in a way that is akin to the Ampersand philosopy:
1. strongly and statically typed;
2. embedded in relation algebra;
3. progress by adding restrictions.
