Purpose for this page
---------------------

As a discussion page for [issue 113](https://github.com/AmpersandTarski/ampersand/issues/133), the ultimate goal is to evolve into a documentation page for Ampersand syntax that facilitates interfacing in a general way.
Thus, terms such as VIOLATION, INTERFACE and VIEW are in scope, whereas terms such as RULE, CONCEPT, RELATION, are not. There may be a grey area including terms such as PURPOSE, PRAGMA, MEANING, which can be viewed as specifying an interface (such as an fspec) for users in the role of designers and implementers. We'll see how the discussion goes in that respect.

----------

Purpose of the new syntax
=========================
The proposed syntax intends to facilitate the generic specification of interfaces for creating, representing, updating and deleting data (chunks) as specified by an Ampersand model. Such interfaces link an Ampersand-defined data store (context) to another data store, which may be either operated by a human (user interfaces) or a machine (machine interfaces).

The new syntax will support several templating mechanisms in a uniform way: HTML template generation, PHP generation, even ExecEngine call generation. The new syntax should allow for the 'straightforward' extension with other templating mechanisms (e.g. for Java, or existing rule engines).

Consensus
=========
An interface can be seen as a communications channel between two contexts.

![Context diagram for Interfaces](https://github.com/AmpersandTarski/wikiMaterials/blob/master/RieksJ/images/Context%20diagram%20for%20Interfaces.png)

One context (called the 'right context') is always defined by an Ampersand model. This context is the 'anchor point' or frame of reference of the Ampersand modeler. The other context (called the 'left context') is usually not defined by an Ampersand model. It is the 'model of the world' as used by a user or some other system. It may help to perceive such a model as if it were an Ampersand model.
An example syntax for INTERFACE:

    INTERFACE TO HTML
      "Main" <Zwolle for="Manager" whenMissing="Sorry, you are not a manager"> : V[SESSION];role;'Manager';V[Roles*A]
        BOX
        [ "atom"   : I
        , "Enter your name"
        , <Empty size="3px">
        , postcode : address
            REF "PostcodeFinder"
        ]

What does all of this mean?

- The (optional, default) "TO HTML" phrase (must be right behind the INTERFACE statement) indicates that the left side context user will expect HTML. When specified (or defaulted to), html templates and php code will be generated based on the specifications that follow later on between the <> tags. In the future, other phrases may be supported, such as "TO JAVA".
- The (optional) identifier "Main" identifies the interface. When specified, the interface can be referred to (from within Ampersand scripts) using this identifier, e.g. in REF statements. When omitted, a (rather unreadable) identifier will be generated for use within prototoypes.
- The <Zwolle ..> bit is specific to "TO HTML", but it is parsed as a keyword (in this case Zwolle) and a set of arguments (key-value pairs). When referring to an interface, the keywords must be identical {Bas: Wat bedoel je hiermee?}. (Just like the types must match). 
- Next is an (optional) :-character. This character is required when an identifier is given, and a <>-tag is omitted.
- Next is an (optional) expression. When omitted, it defaults to the expression 'I'. However, since the type-checker (that is called after the syntax is parsed) requires a type to be defined, the way to fix such a type-checking error would be to write the expression explicitly.
- The { .. } allows you to write a list of key value pairs with (optional) annotations. As previously:
  - An (optional) identifier "atom",
  - An (optional) <Something ..> tag specific to "TO HTML" again (omitted in this example)
  - The ": expression" part, which turns out to be equivalent to the default here.
- The { .. } part may be replaced by a reference, as in "REF PostcodeFinder", which should be an INTERFACE with the name PostcodeFinder, the same "TO HTML" indication and a matching <> tag; when omitted, the tag of the target INTERFACE is used. When used in both the referring and the referred interface, the first word between <> brackets must match.
- The expression may be replaced by a quoted identifier, like "Enter your name", which is equivalent to a relation with any source and UserText target, which contains the single pair (..., "Enter your name").
- Note the difference between writing `x :`, which means a field with label x and expression I, and writing `: x`, which means a field without explicit label and with expression x. When just writing `x`, it is interpreted as `: x`. So after a label, you should either write <> or : . Because of this convention, the "Enter your name" written above is interpreted as the expression (as indicated above).

Parser for INTERFACE (pseudocode):

    > interface = Interface <$> Key "INTERFACE"
    >                       <*> optional defaultInterfaceType (Key "TO" *> interfaceType)
    >                       <*> interfaceBranch
    > interfaceType = Key "HTML" <|> Key "JAVA"
    > interfaceBranch = BranchTriple <$> option (try annotatedKey)
    >                                <*> option expression
    >                                <*> option (   (Key "BOX" *> Key "[" *> interfaceList <* Key "]")
    >                                           <|> (Key "REF" *> (Right <$> identifier))
    >                                           )
    > htmlLikeThing = TAG <$> (Key "<" *> identifier) <*> (repeat keyValuePair)
    > annotatedKey = Key <$> option identifier
    >                    <*> (   (Just <$> htmlLikeThing)
    >                        <|> (const Nothing <$> Key ":")
    >                        )
    > interfaceList = Left <$> repeatWithSeperator (Key ",") interfaceBranch

Violation
---------
For VIOLATION, we can use a lot of the same syntax.
Note that a VIOLATION is always explicitly linked to a RULE, so "_src" and "_tgt" are typed (from "VIOLATION" to the specific type).

    VIOLATION TO HTML BOX
      [ "The name '"
      , _src
      , "' must be unique, but "
      , _src;persoon~ - _tgt
      , " and "
      , _tgt
      , " have the same name."
      ]

Side effects
------------
We cannot allow relation names (or any first identifier inside of an expressions) to be quoted, since we need to make the distinction between a text `"naam"`, and the relation `naam`.
We propose to also forbid concept names to be quoted.
Quoted labels are fine (the target environment i.e. HTML/Java may forbid this, or even require this - as UTF8 heavy environments might).

Discussion
==========

sjcjoosten: any ideas on how to improve the VIOLATION such that we can get rid of the ":" characters? The problem is that we cannot distinguish between an expression and an identifier. For instance, _tgt could be an identifier for the intended label here.

sjcjoosten: should we also discuss the Haskell data-type here? This can help understand the difficulties in implementation.

sjcjoosten: I think the current consensus for Interface is great! (I put it there) RJ: me too! (I agreed)

sjcjoosten: should VIEW be synonymous to INTERFACE (maybe with different defaults), or should it be forbidden?

RJ: Apart from VIOLATION and INTERFACE, I imagine we could also have MEANING and PRAGMA use this syntax (as both have two concepts/atoms), and we might want PURPOSE to apply the BOX-syntax or INTERFACE syntax, depending on whether it documents a concept, or a relation/rule). We would, however, need to think about the purposes for which all this interfacing stuff needs to be generated, and perhaps a more transparent specification of such intentions may be necessary.  