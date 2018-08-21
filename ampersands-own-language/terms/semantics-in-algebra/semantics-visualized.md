# Semantics of residuals visualized

Consider two relations: `traveller[Trip*Person]` and `dest[Trip*Destination]`. The first relation tells which persons are traveling on which trip. The diagram shows this as red dashed lines. The second relation links trips to destinations. It is depicted by dotted blue lines in the diagram.

![Venn-diagram for &apos;traveler&apos; and &apos;dest&apos;](../../../.gitbook/assets/venntrips.svg)

From this diagram, we can tell which statements are true. The statements are given both formally and in natural language.

| Formal statement | Natural language statement | Fact |
| :--- | :--- | :--- |
| `"Peter" (traveler~;dest) "Rome"` | There is a trip that Peter makes with Rome as destination. | True |
|  |  |  |

