# Residual operators in natural language

The meaning of residual operators $$/$$, $$\backslash$$, and $$\diamond$$ is best explained by means of examples.

Assume we have a relation, `label[Contract*Colour]`, which contains the colour of labels on contracts. A fact `"1834" label "blue"` means that contract 1834 has a blue label.

Also assume another relation `stored[Contract*Location]`, which gives the location where a contract is stored. Fact `"1834" store "cabinet 42"` means that contract 1834 is stored in cabinet 42.

* The sentence: "All contracts with a blue label are stored in cabinet 42." is represented as `"blue" (label\stored) "cabinet 42"`. Literally it says: For every contract, if it has a blue label, then it is stored in cabinet 42.
* The sentence: "All contracts that are stored in cabinet 42 have a blue label." is represented as `"blue" (label~/stored~) "cabinet 42"`. Literally it says: For every contract, if it is stored in cabinet 42, then it has a blue label.
* The sentence: "All blue labeled contracts and no others are stored in cabinet 42." is represented as `"blue" (label~<>stored) "cabinet 42"`. Literally it says: For every contract, if it has a blue label, then it is stored in cabinet 42 and if it is stored in cabinet 42, then it has a blue label.

