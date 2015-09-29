# The Command Line Tool (CLI)

Ampersand has a command line tool to generate all kinds of assets. Once you have it installed, you can give commands in the form

## Name

ampersand.exe

## Synopsis

```.bash
ampersand [OPTIONS] [FILE]
```

## Description
**ampersand** searches the named input file and takes that as input. It shoud contain an ampersand model, and should comply to the [syntax](syntax/syntax.md) of ampersand.

When used without specifying switches, it will just check if the input is valid. If so, it will do nothing, if not, it will tell you what is wrong.


## Environment Variables
The behavior of **ampersand** is affected by the following environment variables.
* **CCdbName**  Sets the name of the database that is to be generated. Can be overruled by --dbName
* **CCdirOutput** Sets the default output directory for generated assets. Can be overruled by --outputDir 
* **CCdirPrototype** Sets the default directory where functional prototypes are being generated. Can be overruled by --proto

## Exit status

## Bugs
 We are happy to recieve [bug reports at AmpersandTarski](https://github.com/AmpersandTarski/ampersand/issues) . However, please try to help us by first checking that it has not been reported allready. You can do so by searching the issues. When in doubt however, don't hesitate to [create a new issue](https://github.com/AmpersandTarski/ampersand/issues). 
