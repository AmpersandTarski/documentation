# The IDENT statement
This statement is a rule, which defines an identity on a concept. It is syntactic sugar for specifying a set of relations that identify atoms in a specific concept. For example, if relations `pi` and `rho` determine an atom of concept `T` uniquely, you can write:

```
IDENT "T uniqueness" :  T (pi, rho)
```
As the IDENT statement defines a rule, it can be in the same places as any other RULE.

## Informal Syntax
```
IDENT [{label}:] {Concept} ( {e1}, {e2}, ....)
```
where: 
- {rule name} is the name of the rule 
- {Concept} is the name of the Concept for atoms of which the rule specifies identifiers
- {e[i]} are expressions whose source concept must be {Concept}. This is enforced by the type system.
- The optional label can be a single word or a string \(enclosed by double brackets\). It is followed by a colon \(`:`\) to distinguish the label from the concept that follows.




## Semantics
This translates into the following rule:
  
```
  RULE "{rule name}":  {e1}<>{e1}~ /\ {e2}<>{e2}~ /\ ... |- I[{Concept}]
```
In case `e1`, `e2`, ... are univalent, this is equivalent to:
```
  RULE "{rule name}":  {e1};{e1}~ /\ {e2};{e2}~ /\ ... |- I[{Concept}]
```


