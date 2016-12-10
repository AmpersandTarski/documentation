# The CONTEXT statement

## Semantics

Any Ampersand model has one context.   
The model is true within it's context and there is no knowledge in a model about other contexts.

## Syntax

The model is specified between the keywords CONTEXT and ENDCONTEXT. A context has a name.

```
CONTEXT MyModel
INCLUDE*

<all kind of elements in the model>

ENDCONTEXT
```

Other models included with the INCLUDE statement become part of the context they are included in.

### Optional parts
#### Language definition
It is possible to specify what language your model is in. Currently English and Dutch are supported. To do so, directly following the name of your context, you can specify

```
IN <language>
```
Where <language> can be ```ENGLISH``` or ```DUTCH```. 

#### Markup format
Directly following the optional language definition, you can optionally specify the format of your texts (see PURPOSE statement). Ampersand understands some different markup styles. The default style is REST (Restructured Text) 
```
<markupStyle>
```
where <markupStyle> can be one of
  ```REST```, 
  ```HTML```,
  ```LATEX```,
  ```MARKDOWN```.

(For details on these formats, see [pandoc.org](http://pandoc.org/)).