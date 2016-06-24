# The CONTEXT statement

## Semantics
Any Ampersand model has one context. 
The model is true within it's context and there is no knowledge within this context about other contexts.

## Syntax
The model is specified between the keywords CONTEXT and ENDCONTEXT. A context has a name. 

```
CONTEXT MyModel IN ENGLISH
INCLUDE*

<all kind of elements in the model>

ENDCONTEXT
```

