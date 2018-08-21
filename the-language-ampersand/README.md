# The language Ampersand

Watch [this clip](https://player.ou.nl/wowzaportlets/#!production/Cq0M1nv) to learn how we use the words atom, concept, and relation. Below is a list of other words with a specific meaning in Ampersand.

| Word | Meaning | Example | Purpose |
| :--- | :--- | :--- | :--- |
| [Atom](atoms.md) | an indivisible item | "Peter" | to represent a thing |
| [Concept](concepts.md) | a name to categorize similar items | Person |  |
| Pair | two atoms: a source and a target atom | \("Ida",5\) | to state that two atoms are related |
| [Relation](relations.md) | a set of pairs that is identifyable in a context by its name and type | r\[A\*B\] | to build true statements and store pairs persistently in an application |
| [Rule](rules/) | a constraint, which is supposed to remain satisfied. | r;s⊆t | to provide meaning in a given context |
| satisfy | A rule is satisfied \(in a context\) if the data \(in that context\) do not cause any violation of that rule. |  | to calculate violations at run-time helps users do the right things |
| [Pattern](patterns.md) | a set of rules | PATTERN  ...ENDPATTERN | to gather rules that belong together for reusing them in different contexts |
| Population | a set of pairs in a context | POPULATION r\[A\*B\] CONTAINS \[ \("Ida",5\), \("Bob",1\) \] | to represent the facts \(i.e. true statements\) in an information system |
| [Context](context.md) | a population together with a set of rules that are satisfied by the population. | CONTEXT ...ENDCONTEXT | to maintain a consistent representation of a real life situation |
| View | A set of pairs that can be shown to users in a particular formulation. |  | to represent facts |
| [Interface](https://github.com/AmpersandTarski/documentation/tree/57d76aa18cb0f9eca10ebd5c3badd84f2c80b5d1/ampersands-own-language/services/README.md) | A structure meant for "the outside world" to communicate with the system and possibly change the population. | INTERFACE Request FOR Customer | to let "the outside world" communicate with the system in a given context and possibly change its population |
| Multiplicity | A predefined property of a relation | UNI, TOT, SUR, INJ | to constrain a relation with predefined properties |
| [Term](terms/) | A combination of relations and operators that satisfy the Ampersand syntax | r;s-t | to express rules |
| Operator | a symbol used in combining terms into other terms. | −, ⌣, ∪, ∩, ;, ∖, /, ⊆, = | to express more complex rules. |
| Role | A name for a group of people | ROLE Customer MAINTAINS paymentObligation | to talk about users without having any users |

## Reading guide

Syntactic definitions are given where the underlying notions \(e.g. rule, relation, pattern, etc.\) are discussed. The metasyntax is singled out [on a separate page](how-to-read-syntax-statements.md). Because [terms](terms/) are defined in relation algebra, their semantics are explained in various ways to suit the background of each individual reader. Terms are the only algebraically defined things.

This section is organized by discussing each notion in isolation. Hyperlinks are added in the text to let the reader navigate on her own. The text is suitable for reference purposes, so there is no preferred order in reading.

