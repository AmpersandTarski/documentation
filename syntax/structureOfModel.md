# The structure of an Ampersand model

## CONTEXT - ENDCONTEXT
Any Ampersand model has a context. The model is specified between the keywords CONTEXT and ENDCONTEXT. Any context has a name. 

```
CONTEXT MyModel IN ENGLISH

<all kind of elements in the model>

ENDCONTEXT
```

## INCLUDE
Specifies files that need to be included before compiling.

Possible files to include are:
-	other adl-files 
-	the xlsx-file with the standard population 

Make sure to include the adl-files before including xlsx-files.
The filename is given in double quotes, including a path that is relative to the position of the main adl-file. The main adl-file is the file that is called with the command Ampersand.
Files can be nested. Nested adl-files can have their own xlsx-files included. 
For formatting your excel-file see the text on [the Excel Importer](../prototypes/extensions/excelimporter.md)

Note that all code in the included adl-files will become part of the context of the main adl-file. 

## PATTERN - ENDPATTERN
A pattern is a section of a model.  A model can have as many patterns as you want.
It has currently no effect on how the code is processed. You can use it to structure the code. 



Other elements in a context will be defined on the following pages.