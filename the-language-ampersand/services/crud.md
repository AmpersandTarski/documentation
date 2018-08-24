# CRUD

CRUD annotations are used in services to constrain the functionality of fields and boxes in an `INTERFACE`-statement. This allows you to avoid redundant functionality.

After each expression in an interface you will be able to specify CRUD rights. Capital = allowed, Non-capital = not allowed. CRUD is the default, so if you specify nothing, everything is allowed.

The following example shows how crud annotations are used. On line 1 it is used with a box and on lines 2 and 3 it is used with fields. The CRUD annotation always follows an expression within a service.

```text
INTERFACE "ifc A"  : expr cRud   -- used for a box
    BOX [ "label1" : expr cRUd   -- used for a field
        , "label2" : expr        -- CRUD is default
        ]
```

The run time semantics for CRUD as implemented are listed here.

## Create

| Create | CRUD for boxes |  | CRUD for fields |
| :--- | :--- | :--- | :--- |
| C | A `+` button is displayed that lets you create a new atom, but only if the box-expression is editable. | ![Creating atoms is done by pressing the + button](../../.gitbook/assets/create-field.png)  | Enter a new atom and a `+` button appears that lets you create it. If you enter an existing atom, you can select it. |
| c | Atoms cannot be created |  | Atoms cannot be created |

## Read

| Read | CRUD for boxes |  | CRUD for fields |
| :--- | :--- | :--- | :--- |
| R | Read is allowed |  | Read is allowed |
| r | Read is not allowed |  | Read is not allowed |

## Update

| Update | CRUD for boxes | CRUD for fields | CRUD for fields |
| :--- | :--- | :--- | :--- |
| U | Removing and/or adding a pair \(src,tgt\) is allowed if expr is editable and the atom exists. | ![Creating atoms is done by pressing the + button](../../.gitbook/assets/crud-buttons.png)  | Removing and/or adding a pair \(src,tgt\) is allowed if expr is editable. |
|  |  | Removing and/or adding |  |
| u | Update is not allowed |  | Update is not allowed |

## Delete

| Delete | CRUD for boxes |  | CRUD for fields |
| :--- | :--- | :--- | :--- |
| D | Not possible |  | Delete atom \(tgt\) and all pairs in which it is used. |
| D | Not possible |  | Delete atom \(tgt\) and all pairs in which it is used. |

A top-level Update or Create are common in my own scripts, e.g. to create an overview of People and be able to create a new Person: `INTERFACE "People" : V[SESSION*Person] CRud COLS []`. And update is also possible.

Keep in mind that the crud rights are about the relation\(expression\) and not the root atom. In \#141 we described the semantics of the CRUD syntax. In short:

| CRUD | Tgt concept ISA Object | Tgt concept ISA Scalar |
| :--- | :--- | :--- |
| C | Be able to add a new link by creating a new atom \(concept = tgt of expr\). If expr is not a relation, the atom is created, but not the link. Depending on the expression, the newly created atom might appear or not. | NA Warning: Not possible, use update |
| c | Not allowed to create new tgt atom | NA |
| R | Read allowed | Read allowed |
| r | Read not allowed | Read not allowed |
| U | Add and/or remove link from src atom to existing atoms \(concept = tgt of expr\). When expr is not a relation -&gt; Warning: Update not possible | Add and/or remove link from src atom to tgt atom. Tgt atom does not have to exists \(because it is a scalar\). When expr is not a relation -&gt; Warning: Update not possible |
| u | Add/remove links not allowed | Add/remove links not allowed |
| D | Remove link by deleting tgt atom. All other links from/to tgt atom are also removed | NA Warning: Not possible, use update |
| d | Remove link by deleting tgt atom not allowed | NA |

Motivations for CRUD-functionality are found in the [GitHub discussions on CRUD](https://github.com/AmpersandTarski/Ampersand/issues?utf8=✓&q=is%3Aissue+label%3Acrud+) functionality.

