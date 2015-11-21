# Creating interfaces

This chapter explains how to specify interfaces. The following figure is an example of a user interface, which shows the name, status, e-mail and co-workers of a person called "J. Lovell"
![interface of "J. Lovell"](https://github.com/AmpersandTarski/documentation/blob/Interfacing/Figures/InterfaceLovellRaw.jpg?raw=true "Example of a user interface"). The specification of this interface is given in the following code fragment
```ampersand
INTERFACE "Person" : I[Person]
BOX
  [ "Name"       : personName
  , "Status"     : personStatus
  , "Email"      : personEmail
  , "Works with" : workswith 
  ]
```
Notice the following features:
1. The interface has a name, which identifies that interface throughout the context.
2. The expression `I[Person]` on the first line determines which atoms may be represented. In this example, only atoms of concept `Person` are displayed in the interface.
3. The example displays J. Lovell, an atom of concept `Person`. This atom is called the root atom. Every interface is displayed with one root atom.
4. The labels "Name", "Status", "Email", and "Works with" correspond to the field names in the user interface.
5. Each expression at the right of the semicolon specifies which data is presented in the field. For this reason it is called the *field expression* for that field. The field expression is evaluated with the root atom on the left. All atoms at the right are displayed in the field.
6. The interface is subject to type checking. The following examples of relations that are needed to obtain a type-correct interface:
```
RELATION personName :: Person * PersonName [UNI]
RELATION personStatus :: Person * PersonStatus [UNI]
RELATION personEmail :: Person * Email [UNI,TOT]
RELATION workswith :: Person * Person
```