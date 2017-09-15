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

![](/assets/BR course  - Pagina 1.png)

