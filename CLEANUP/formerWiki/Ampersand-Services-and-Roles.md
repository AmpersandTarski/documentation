The purpose of Ampersand services and roles is to maintain (a specific set of) ampersand rules in (running) prototype systems. This means that whenever a violation of one of these rules is presented to such a service or role, it will do something that resolves the violation, or at least make some contribution towards such a resolution. 

The difference between a service and a role is that a service refers to a class of automated actors (computer programs), whereas a role refers to a class of human actors (people). 

The Ampersand syntax allows the assignment of rules to roles and services. Also, it allows to provide such roles and services with a working instruction for the resolution of individual rules. The syntax of such instructions may depend on the role or service that must resolve violations of the rules that are assigned to them. 

## Example
Consider the following scriptlet. It knows of entities that can have a color, and (at most) one parent. The rules ensure that entities that have no parents can have an arbitrary color, or no color. An entity that does have a parent inherits the color (or uncoloredness) of its parent. 

     hasColor  :: Entity * Color  [UNI]       MEANING "An entity may have a color"
     hasParent :: Entity * Entity [UNI,ASY]   MEANING "An entity may have a parent"

     RULE "Colored entities": hasParent;hasColor |- hasColor
     MEANING "An entity that has a parent, must have the same color as the parent."

     RULE "Uncolored entities": hasParent;(I-(hasColor;hasColor~)) |- -(hasColor;hasColor~)
     MEANING "An entity that has an uncolored parent, cannot have a color."

The following scriptlet shows only the rules, and assigns them to the role 'Barber'. The working instruction for maintaining the rule is specified by the [`VIOLATION` statement](`VIOLATION` statement syntax). These working instructions will show in the prototype as work to be done when the role 'Barber' is active.

     ROLE Barber MAINTAINS "Coloring entities"
     RULE "Coloring entities": hasParent;hasColor |- hasColor
     MEANING "An entity that has a parent, must have the same color as the parent."
     VIOLATION (TXT "Entity ", SRC I, " must be colored ", TGT I)

     ROLE Barber MAINTAINS "Erasing the color of entities"
     RULE "Erasing the color of entities": hasParent;(I-(hasColor;hasColor~)) |- -(hasColor;hasColor~)
     MEANING "An entity that has an uncolored parent, cannot have a color."
     VIOLATION (TXT "The color of entity ", SRC I, " must be erased.")

Maintenance of this rule can also be assigned to the [ExecEngine service](The ExecEngine Service). This is a rather generic service that is capable of doing simple things in the database, such as create and delete atoms, and inserting (updating) and deleting pairs (of atoms). The [ExecEngine syntax](The ExecEngine Syntax) defines what the service can and cannot do. The ExecEngine service can be used to maintain both rules of the example in an automated fashion, as follows:

     SERVICE ExecEngine MAINTAINS "Automated entity coloring"
     RULE "Automated entity coloring": hasParent;hasColor |- hasColor
     MEANING "An entity that has a parent, must have the same color as the parent."
     VIOLATION (TXT "{EX} InsPair;hasColor;Entity;", SRC I, TXT ";Color;", TGT I)

     SERVICE ExecEngine MAINTAINS "Automated color erasure"
     RULE "Automated color erasure": hasParent;(I-(hasColor;hasColor~)) |- -(hasColor;hasColor~)
     MEANING "An entity that has an uncolored parent, cannot have a color."
     VIOLATION (TXT "{EX} DelPair;hasColor;Entity;", SRC I, TXT ";Color;", SRC hasColor)

The tasks that a service (or role) must do is thus basically defined by the set of rules that it has been assigned to maintain.
***
