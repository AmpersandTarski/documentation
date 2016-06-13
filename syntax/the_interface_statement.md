# The INTERFACE statement

Specifies the user interface to read and manipulate data in the population. Rules are applied to the data.

The interface shows atoms in concepts.

Each declaration of INTERFACE results in an icon for a screen in the prototypes

To initiate the INTERFACE the standard concept SESSION must be called. This concept has relations to all concepts defined in the model.
The INTERFACE is build on one of the concepts you have defined (the root-concept for this interface) and shows for each atom in this concept the atoms in other concepts that this root-atom forms tuples with.

Basic syntax within an interface:
“Name” : personName

“Name” is printed on screen as the field prompt. It is a temporary variable and must be unique within the interface.
personName is the relation followed from the root-atom to the target atom which is printed on screen.

For formatting keywords BOX, COLS, ROWS, TABS can be used.


