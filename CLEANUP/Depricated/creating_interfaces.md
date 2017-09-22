# Creating interfaces
*** Most of this page is transferred to the syntax pages for interfaces. CRUD and editing don't seem to work as described here, so that information is left out and this page is kept here for later use***


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
The following figure shows the effect on the user interface that displays "J. Lovell". The fields `Name` and `Email` have become editable. You should actually try this out for yourself, because in this book all you see is a different look for the editable fields. In the actual application you will find that these fields have now become editable.
![interface of "J. Lovell"](https://github.com/AmpersandTarski/documentation/blob/master/Figures/InterfaceLovellEditable.jpg?raw=true "Example of a user interface")

##CRUD-functionality
To create, read, update or delete the atom "J.Lovell", add a CRUD denotation to the interface. It consists of the letters `c`, `r`, `u`, `d` (in that order) each of which is either in lowercase or uppercase. The lowercase letter means "No, you cannot!" and the uppercase letter means "Yes, you can!" for each function `c`, `r`, `u`, and `d`.

Let us append, for example, the word `CRuD` to the header of the interface, as in:
```ampersand
INTERFACE "Project"  : I[Project] ROWS CRuD
```
The word `CRuD` specifies that the user can create, read, and delete projects, but updating will not be possible.
