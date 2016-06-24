# The structure of an Ampersand model

## CONTEXT - ENDCONTEXT
Any Ampersand model has a context. The model is specified between the keywords CONTEXT and ENDCONTEXT. A context has a name. 

```
CONTEXT MyModel IN ENGLISH
INCLUDE*

<all kind of elements in the model>

ENDCONTEXT
```

## PATTERN - ENDPATTERN
A pattern is a section of a model.  A model can have as many patterns as you want.
It has currently no effect on how the code is processed. You can use it to structure the code. 



Other elements in a context will be defined on the following pages.