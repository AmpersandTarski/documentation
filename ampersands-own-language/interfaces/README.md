# Interfaces

## Purpose

An interface specifies how a user or a computer interacts with data from a [context](../context.md).

## Description

An interface specifies which data is presented to which users. For every different use of the system a different interface can be defined. This may lead to large numbers of interfaces for large and complex systems. However, one device will show one interface only at any given moment in time.

This page gives the formal details of interfaces. Some more explanations [are found here](explanations.md).

## Example

```text
INTERFACE Overview : "_SESSION"                  cRud
TABS [ Students : V[SESSION*Student]             cRuD
        COLS    [ "Student"      : I[Student]    CRUD
                , "Enrolled for" : isEnrolledFor cRUD
                , "Course"       : takes         CRUD
                ]
     , Course : V[SESSION*Course]                cRuD
        COLS    [ "Course"  : I                  cRud
                , "Modules" : isPartOf~          CRUD
                ]
     , Modules : V[SESSION*Module]               cRud
        COLS    [ "Modules"  : I                 cRuD
                , "Course"   : isPartOf          cRud
                , "Students" : isEnrolledFor~    CRUD
                ]
     ]

```

This interface specifies three tabs. One shows students, one shows courses and one shows modules. This is what it looks like when run in a browser:

![Screenshot of the resulting user interface](../../.gitbook/assets/screenshot.png)

## Using an interface

On the user screen atoms are being displayed as data. If these atoms are displayed as hyperlink, Ampersand has recognized an interface for that atom to which the user can navigate.

When running an application in your browser, you are watching one user-interface at any given moment in time. Each hyperlink on your screen represents an atom to which some interface applies. To navigate to that user-interface, just click on the hyperlink. You will see the interface being applied solely to the atom you just clicked. To determine the atom\(s\) to which an interface applies, each interface has an _interface term_.

## Syntax and Meaning

The syntax of an interface has a complex structure. It is best [explained by means of examples](explanations.md). The following section is meant for reference purposes, for those who need to understand the syntax in detail.

An interface specification has the following structure. It is identical for user interfaces \(`INTERFACE`\) and application programming interfaces \(`API`\).

```text
INTERFACE <name> <forRoles>? : <term> <crud>? <view>? <subinterface>?
API       <name> <forRoles>? : <term> <crud>? <view>? <subinterface>?
```

The name of an interface must be unique within the context. The term defines the atoms to which the interface can be applied. The \(optional\) crud annotation constrains the possible interactions a user can do. The \(optional\) views determine what the interface will look like. If no view is specified, the interface will look like the screenshot above. Finally the sub-interface contains all the contents, i.e. the fields, field names and the constraints on them.

The hierarchy of boxes in an interface comes from the following \(recursive\) syntax of `<subinterface>`.

A sub-interface may be defined on the spot \(by `<boxKey> <box>`\) or it may link to another interface to reuse its structure:

```text
<subinterface> ::= <boxKey> <box>
                 | LINKTO ( INTERFACE | API ) <name>

```

The box key is meant to tell the front-end application what the interface looks like. The flavours `ROWS`, `COLS`, and `TABS` are standard. Nonstandard HTML is specified by `BOX`.

```text
<boxKey> ::= BOX '<' <htmlname> '>'
           | ROWS
           | COLS
           | TABS
```

A box is simply a list of interface items \(`ifcItem`\)  separated by commas. Each interface item specifies a field in the interface or a sub-interface.

```text
<box> ::= '[' <ifcItem> ( ',' <ifcItem> )* ']'
```

Each interface item has a label that must be unique within the box. After the colon there is either a term or a text. The term specifies which data is related to the field it specifies if it has no sub-interface. If it does, it specifies the atoms on which the box is applied.

```text
<ifcItem> ::= <label> ':' <term> <crud>? <view>? <subinterface>?
            | <label> ':' <text>
```



