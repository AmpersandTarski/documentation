# The conceptual model

You have seen the webapplication Hawaii in action. You have seen the code that defines the system is such a way that Ampersand can generate the webapplication. Now we will have a look at the conceptual model that is defined in that code. In this tutorial we will only describe the example to make you a more familiar with the terminology. Just try to recognize what is described in the code and in the working system.

We have three ingredients:

* CONCEPT
* RELATION
* RULE

Before we discuss these three main ingredients, we will discuss the other keywords you see in the code:

* INTERFACE is not crucial for the conceptual model, but still crucial for the web application. It uses the conceptual model to define the tabs and fields displayed. We will come back to this later.
* The test after MEANING and PURPOSE is printed in the documentation that RAP3 can generate. 
* MESSAGE and VIOLATION are used to display messages on screen to the user about rule violations. 
* POPULATION provides the web application with actual data to test the rules with. Adding data to the system can also be done with an excel sheet. The data consist of elements that populate the concepts and whether or not these elements are connected to each other in a specific relation. 

## The core of the model

The goal of the model is to define rules that will govern the behavior of the system. Rules are about relations and relations link elements of one concept with elements of another concept. So we need all three ingredients to define the model. Deciding about these ingredients, their name and their attributes is exactly the modeling that you will learn in this course.

The conceptual model of Hawaii can be represented with a diagram:

![](/assets/Model Hawaii.png)

In the code you can find the MEANING of each relation in natural English. In the model, each relation represents a set of pairs. The relation pass is filled with \(subject, student\)-pairs that each specify a specific subject that has been passed by a specific student. The same student can appear in more pairs and the same subject can appear in more pairs. A specific pair \(x,y\) can only appear in the set once.

### Assignment

**Question 1**: given the initial dataset in the source-code of Hawaii, what pairs are in the relation requires?

**Question 2**: given the initial dataset in the source-code of Hawaii, which students will attend which destinations?

## The rule

So let’s finally go to the one rule that governs this information system: `attends |- pass~;required`

The rule consists of two parts with the `|-` as separator. On each side of the separator you find a relation. On the left the relation `attends` and on the right-hand side you see a relation that is not explicitly defined in the model, but it is constructed from two relations that are in the model: `pass~`\(pronounced as “pass-flip”, indicating the relation in opposite direction\) and `required`. This constructed relation consists of \(student, destination\)-pairs where the student has passed the subject and that same subject is required for that destination. Let’s call this new relation qualifies\_for.

Now we have the following rule: "attends implies qualifies\_for".

Everytime the user tries to add a destination for a student, the rule checks whether the rule will turn out to be true for this \(student, destination\)-pair. If not, the rule produces a violation message. In fact, with each ‘save’ in the database, all information in the database is checked against this rule.

### Assignment

Try to reason about the answers to the following questions based on the conceptual model and the rule. After that, try it out in the system.

**Question 1**: Suppose the user has added to the database that students Brown and Conway will attend the trip to Hawaii. Will this cause a violation message?

**Question 2**:  Next, what will happen when “English” is added as required subject for Hawaii? Why?

**Question 3**: Next, what will happen when the user adds “Dutch” as required subject for Amsterdam? Why?

**Question 4**: Think of an entry you can do in the system to generate a violation message and try it out in the system.

## What have you learned?

* an information system may be seen as a system of relations and rules that governs data, supplemented by user-interfaces that give access to that data.
* a rule engine executes the rules on all data regularly



