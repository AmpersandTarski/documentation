---
description: >-
  The syntax of a service has a complex structure. This section is meant for
  reference purposes.
---

# Syntax and meaning

The syntax of a service is best [explained by means of examples](explanations.md). However, if you want to understand the syntax in detail, this section is what you are looking for.

A service specification has the following structure. It is identical for user interfaces \(`INTERFACE`\) and application programming interfaces \(`API`\).

```text
INTERFACE <name> <forRoles>? : <term> <crud>? <view>? <subinterface>?
API       <name> <forRoles>? : <term> <crud>? <view>? <subinterface>?
```

The name of a service must be unique within the context. The term defines the atoms to which the interface can be applied. The \(optional\) crud annotation constrains the possible interactions a user can do. The \(optional\) views determine what the service will look like. If no view is specified, the service will look like the screenshot above. Finally the sub-interface contains all the contents, i.e. the fields, field names and the constraints on them.

The hierarchy of boxes in a service comes from the following \(recursive\) syntax of `<subinterface>`.

A sub-interface may be defined on the spot \(by `<boxKey> <box>`\) or it may link to another service to reuse its structure:

```text
<subinterface> ::= <boxKey> <box>
                 | LINKTO ( INTERFACE | API ) <name>
```

The box key is meant to tell the front-end application what the service looks like. The flavours `ROWS`, `COLS`, and `TABS` are standard. Nonstandard HTML is specified by `BOX`.

```text
<boxKey> ::= BOX '<' <htmlname> '>'
           | ROWS
           | COLS
           | TABS
```

A box is simply a list of service items \(`ifcItem`\) separated by commas. Each service item specifies a field in the service or a sub-interface.

```text
<box> ::= '[' <ifcItem> ( ',' <ifcItem> )* ']'
```

Each service item has a label that must be unique within the box. After the colon there is either a term or a text. The term specifies which data is related to the field it specifies if it has no sub-interface. If it does, it specifies the atoms on which the box is applied.

```text
<ifcItem> ::= <label> ':' <term> <crud>? <view>? <subinterface>?
            | <label> ':' <text>
```

