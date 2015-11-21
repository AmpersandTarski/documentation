# Creating interfaces
This chapter explains how to specify interfaces. The introduction specifies an interface by example. It contains enough information for you to understand a simple interface in Ampersand.

##Introduction
The following figure is an example of a user interface, which shows the name, status, e-mail and co-workers of a person called "J. Lovell".
![Interface of "J. Lovell"](https://github.com/AmpersandTarski/documentation/blob/Interfacing/Figures/InterfaceLovellRaw.jpg?raw=true "Example of a user interface")

The specification of this interface is given in the following code fragment
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
4. The labels "Name", "Status", "Email", and "Works with" correspond to field names in the user interface.
5. Each expression at the right of the semicolon specifies which data is presented in the field. For this reason it is called the *field expression* for that field. The field expression is evaluated with the root atom on the left. All atoms at the right are displayed in the field.
6. The interface is subject to type checking. The following relations provide an example for getting a type-correct interface:
```
RELATION personName :: Person * PersonName [UNI]
RELATION personStatus :: Person * PersonStatus [UNI]
RELATION personEmail :: Person * Email [UNI,TOT]
RELATION workswith :: Person * Person
```

##Nesting
You can create structure in an interface by nesting. Here is an example:
![Interface of project "Alpha Board"](https://github.com/AmpersandTarski/documentation/blob/Interfacing/Figures/InterfaceAlphaBoardNested.jpg?raw=true "Example of a nested user interface")

The specification of this interface is given in the following code fragment.
```ampersand
INTERFACE "Project"  : I[Project] ROWS
  [ "Project"     : I[Project]
  , "Name"        : projectName
  , "Current PL"  : pl
  , "Administration" : I[Project] TABS
     [ "Project leaders" : project~;assignee/\pl COLS
        [ "Name"      : personName
        , "Status"    : personStatus
        , "Email"     : personEmail
        ]
     , "Project members" : project~;assignee/\member COLS
        [ "Name"      : personName
        , "Status"    : personStatus
        , "Email"     : personEmail
        ]
     ]
  ]
```
Notice the following features:
1. The structure of an interface is hierarchical. It consists of boxes within a box.
2. Each field expressions in a box has a source and a target concept.
3. The source concept of a field expression must match with the target concept of the field expression outside the box.
4. The target concept of a field expression that has a box, must match with the source concepts of all fields inside that box.

##Formatting
Especially in more complicated interfaces, you will find it nice to adapt the layout of the fields of your interface. For this purpose, you can substitute the word `BOX` by `COLS`, `ROWS`, or `TABS`, as in the following code fragment.
```ampersand
INTERFACE "Project"  : I[Project] ROWS
  [ "Project"     : I[Project]
  , "Name"        : projectName
  , "Current PL"  : pl
  , "Administration" : I[Project] TABS
     [ "Project leaders" : project~;assignee/\pl COLS
        [ "Name"      : personName
        , "Status"    : personStatus
        , "Email"     : personEmail
        ]
     , "Project members" : project~;assignee/\member COLS
        [ "Name"      : personName
        , "Status"    : personStatus
        , "Email"     : personEmail
        ]
     ]
  ]
```
Notice the effect that these changes have on the user interface.
![Interface of project "Alpha Board"](https://github.com/AmpersandTarski/documentation/blob/Interfacing/Figures/InterfaceAlphaBoardFormatted.jpg?raw=true "Example of formatting by COLS, ROWS, or TABS")

Notice the following features:
1. The keyword `TABS` turns the box into a tabulated layout.
2. The keyword `COLS` turns the layout 90 degrees into columns.
3. The keyword `ROWS` is default for any box. It does not change the effect of `BOX`.

##Editing fields
User interfaces are not just meant to display data. Users must also change data. You can specify which relations may be edited in the interface. Just before the colon in the interface header is the place where you put a list of relations that can be edited in your interface. In the following example the relations `personName` and `personEmail` are editable in the interface:
```ampersand
INTERFACE "Person" (personName, personEmail) : I[Person]
BOX
  [ "Name"       : personName
  , "Status"     : personStatus
  , "Email"      : personEmail
  , "Works with" : workswith 
  ]
```
The following figure shows the effect on the user interface that displays "J. Lovell". The fields `Name` and `Email` have become editable.
![interface of "J. Lovell"](https://github.com/AmpersandTarski/documentation/blob/Interfacing/Figures/InterfaceLovellEditable.jpg?raw=true "Example of a user interface")

To delete the atom "J.Lovell", add a CRUD denotation to the interface. It consists of the letters c, r, u, d (in that order) each of which is either in lowercase or uppercase. The lowercase letter means No and the uppercase letter means Yes for doing the function represented by the letter.

| C | create    |
| --|---------- |
| R | read      |
| U | update    |
| D | delete    |

The following code fragment specifies 