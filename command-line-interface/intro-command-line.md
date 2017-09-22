# Ampersand in the Command Line Interface (CLI)



## Name

ampersand.exe

## Synopsis

```.bash
ampersand [SWITCHES] [FILE]
```
## Examples
```.bash
ampersand -fl --verbose Hawaii.adl
ampersand Delivery.adl
ampersand --proto="D:\htdocs\CvM\" Contracts.adl
ampersand --help
ampersand --help --verbose
ampersand --version
```

## Description
**ampersand** takes a file as input. It must contain a valid ampersand script that complies to the [syntax](../syntax/syntax.md) of ampersand.

When used without any [switches](switches.md), it will check if the input is valid. If so, it will do nothing, if not, it will tell you what is wrong.

## Exit status

## Bugs
 We are happy to receive [bug reports at AmpersandTarski](https://github.com/AmpersandTarski/ampersand/issues) . However, please try to help us by first checking that it has not been reported allready. You can do so by searching the issues. When in doubt however, don't hesitate to [create a new issue](https://github.com/AmpersandTarski/ampersand/issues). 
