# Semantics of residuals visualized

Consider two relations: `traveller[Trip*Person]` and `dest[Trip*Destination]`. The first relation tells which persons are traveling on which trip. The diagram shows this as red dashed lines. The second relation links trips to destinations. It is depicted by dotted blue lines in the diagram.

![Venn-diagram for &apos;traveler&apos; and &apos;dest&apos;](../../../.gitbook/assets/venntrips.svg)

From this diagram, we can tell which statements are true. The statements are given both formally and in natural language.

| Formal statement | Natural language statement |
| :--- | :--- |
| `"Peter" (traveler~;dest) "Rome"` | There is a trip that Peter makes with Rome as destination. |
| `"Peter" (traveler~;dest) "Paris"` | There is a trip that Peter makes with Paris as destination. |
| `"Peter" (traveler~/dest) "Rome"` | Every trip to Rome is made by Peter. |
| `"Peter" (traveler~/dest) "Paris"` | Every trip to Paris is made by Peter. |

The following statements do **NOT** follow from the population shown in the diagram:
| Formal statement | Natural language statement |
| :--- | :--- |
| `"Peter" (traveler~;dest) "Rome"` | There is a trip that Peter makes with Rome as destination. |
| `"Peter" (traveler~;dest) "Paris"` | There is a trip that Peter makes with Paris as destination. |
| `"Peter" (traveler~/dest) "Rome"` | Every trip to Rome is made by Peter. |
| `"Peter" (traveler~/dest) "Paris"` | Every trip to Paris is made by Peter. |

