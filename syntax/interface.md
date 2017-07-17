# The INTERFACE statement

Interfaces are meant for interacting with data from a dataset. You define an interface to control precisely which data is presented to which users. You have to declare each interface individually.

Each interface has a _name_ that is unique for every interface in the same context.

When running your application in your browser, you are watching one user-interface at any given moment in time. To navigate to another user-interface, you can click on any hyperlink on your screen. That hyperlink represents one atom, to which an interface applies[^2].  
Each interface is applicable to a specific set of atoms.  
Each interface has an _interface expression_ that determines on which atoms it applies.

To initiate the INTERFACE the standard concept SESSION must be called. This concept has relations to all concepts defined in the model. The code below is the declaration of an interface "People" that shows all atoms in the concept Person:

```ampersand
INTERFACE "People" : V[SESSION*Person]
```

The concept Person is the root-concept for this interface. The fields in the interface can show each atom in this concept and all atoms they are related to. These relations can be specified using relation algebra. The code below shows the target of the relation personName from Person to Name:

```ampersand
“Name” : personName
```

“Name” is printed on screen as the field prompt. It is a temporary variable and must be unique within the interface.

## An Example

The following figure is an example of a user interface, which shows the name, status, e-mail and co-workers of a person called "J. Lovell".

![Interface of &quot;J. Lovell&quot;](https://github.com/AmpersandTarski/documentation/blob/master/Figures/InterfaceLovellRaw.jpg?raw=true "Example of a user interface")

The specification of this interface is given in the following code fragment

```ampersand
INTERFACE "People" : V[SESSION*Person]
BOX
  [ "Name"       : personName
  , "Status"     : personStatus
  , "Email"      : personEmail
  , "Works with" : workswith 
  ]
```

Notice the following features:  
1. The labels "Name", "Status", "Email", and "Works with" correspond to field names in the user interface.  
2. Each expression at the right of the semicolon specifies which data is presented in the field. For this reason it is called the _field expression_ for that field. The field expression is evaluated with the root atom on the left. All atoms at the right are displayed in the field.  
3. The interface is subject to type checking. The following relations provide an example for getting a type-correct interface:

```
RELATION personName :: Person * PersonName [UNI]
RELATION personStatus :: Person * PersonStatus [UNI]
RELATION personEmail :: Person * Email [UNI,TOT]
RELATION workswith :: Person * Person
```

## Nesting

You can create structure in an interface by nesting. Here is an example:

![Interface of project &quot;Alpha Board&quot;](https://github.com/AmpersandTarski/documentation/blob/master/Figures/InterfaceAlphaBoardNested.jpg?raw=true "Example of a nested user interface")

The specification of this interface is given in the following code fragment.

```ampersand
INTERFACE "Project"  : V[SESSION*Project] ROWS
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

## Formatting

Especially in more complicated interfaces, you will find it nice to adapt the layout of the fields of your interface. For this purpose, you can substitute the word `BOX` by `COLS`, `ROWS`, or `TABS`, as in the following code fragment.

```ampersand
INTERFACE "Project"  : V[SESSION*Project] ROWS
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
![Interface of project &quot;Alpha Board&quot;](https://github.com/AmpersandTarski/documentation/blob/master/Figures/InterfaceAlphaBoardFormatted.jpg?raw=true "Example of formatting by COLS, ROWS, or TABS")

Notice the following features:  
1. The keyword `TABS` turns the box into a tabulated layout.  
2. The keyword `COLS` turns the layout 90 degrees into columns.  
3. The keyword `ROWS` is default for any box. It does not change the effect of `BOX`.

## Experiment on your own.

Compile and run the script [Project Administration Example](https://github.com/AmpersandTarski/ampersand-models/tree/master/Examples/ProjectAdministration "from AmpersandTarski/ampersand-models"). Start by reproducing everything that is shown above. It is quite likely that you will be trying out your own ideas before you get to the end... Have fun!

[^1]: 

[^1]: Several interfaces may apply to the same atom. That gives you a choice on runtime to which interface you want to navigate.

