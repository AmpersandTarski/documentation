# Can dougnuts be declarative?

What is a doughnut? If we first make some dough, then shape it into a circle, and then fry it, that gives us a doughnut. I can also just say that a doughnut is a toroid-shaped, fried piece of dough. The former is called a procedural or imperative description, which we know from cooking \(e.g. a recipe for making apple pie\) or in the process industry \(a method for extracting nitrogen from the air\), for example. The latter is called a declarative definition, examples of which are [a blueprint of the Tower Bridge](https://az-eandt-live-legacy.azureedge.net/magazine/2012/03/images/TowerBridge.jpg) in Rotterdam, a city map of London, [the law that defines the national registry of persons](http://wetten.overheid.nl/jci1.3:c:BWBR0033715) in the Netherlands \(called BRP\), and a conceptual model of Amazon.com.

The same distinction works for information systems too. We can define an information system by describing the steps that lead to that system. Or we can define that system by defining its components and their relations. Patent law also makes this distinction, e.g. for a chemical substance as opposed to the process of making that substance.

Ampersand is a declarative language and it is meant for specifing information systems. It defines a system by stating its components and their relations. Other examples of declarative languages are YAML, JSON, SQL, Haskell, and Terraform.

Examples of procedural or imperative languages are Perl, make, Java, and C\#. These languages define a desired result by specifying the steps needed to produce it. This makes the order of statements highly relevant. For example, if we would fry the dough first and then shape it into a circle, who would expect to get a proper doughnut from that?

In a declarative language, the order of statements is much less relevant. We can say that a doughnut is toroid shaped and that it is fried and that it is made of dough. And we can mention these constraints in any order.

To make Ampersand declarative is a deliberate choice, because things are best defined by conditions \(as opposed to the steps to produce it\). And after all, defining an information system is the main purpose of Ampersand.

Still wondering whether doughnuts can be declarative? Let's dismiss the question and say that a dougnut is best defined in a declarative way, best produced in a procedural way, and best enjoyed with lots of sugar.

