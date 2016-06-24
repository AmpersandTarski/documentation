# The INCLUDE statement

## Semantics
Specifies files that need to be included before compiling.

Possible files to include are:
-	other adl-files 
-	xlsx-files with the standard population 

A model is true within a specific context. All code in the included adl-files will become part of the context of the main adl-file. The main adl-file is the file that is called with the command Ampersand.

## Syntax
```
INCLUDE filename+
```
The filename is given in double quotes, including a path that is relative to the position of the main adl-file. 

Make sure to include the adl-files before including xlsx-files.

Files can be nested. Nested adl-files can have their own xlsx-files included. 

For formatting your excel-file see the text on [the Excel Importer](../prototypes/extensions/excelimporter.md).



