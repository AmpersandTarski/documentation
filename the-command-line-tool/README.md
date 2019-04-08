# Running the Ampersand compiler

## NAME

`ampersand`

Runs the Ampersand compiler from the command line in Windows, MacOS, and Linux.

## SYNOPSIS

```bash
ampersand [OPTIONS] FILE
```

## DESCRIPTION

**ampersand** takes a file as input. It must contain a valid ampersand script, i.e. a script that complies to the [syntax](../the-language-ampersand/syntactical-conventions.md) and semantics of ampersand. The compiler will not generate any output unless the script is valid.

When used without any [options](https://github.com/AmpersandTarski/documentation/tree/5c45435a2b5cdd69129ba6ee9401819331fb531e/the-command-line-tool/options.md), it will check if the input is valid. If so, it will do nothing, if not, it will tell you what is wrong.

## OPTIONS

The [list of options](https://github.com/AmpersandTarski/documentation/tree/5c45435a2b5cdd69129ba6ee9401819331fb531e/the-command-line-tool/options.md) contains all compiler options.

The standard behavior of **ampersand** is affected by the following environment variables.

* **CCdbName**  Sets the name of the database that is to be generated. Can be overruled by --dbName
* **CCdirOutput** Sets the default output directory for generated assets. Can be overruled by --outputDir 
* **CCdirPrototype** Sets the default directory where functional prototypes are being generated. Can be overruled by --proto

## EXAMPLES

```bash
ampersand -fdocx --verbose Hawaii.adl             # generates a specification document for Hawaii.adl
ampersand Delivery.adl                            # just check Delivery.adl for errors
ampersand --proto="D:\htdocs\CvM\" Contracts.adl  # generate a prototype from Contracts.adl
ampersand --help
ampersand --help --verbose
ampersand --version
```

## BUGS

We are happy to receive [bug reports at AmpersandTarski](https://github.com/AmpersandTarski/ampersand/issues) . However, please try to help us by first checking that it has not been reported already. You can do so by searching the issues. When in doubt however, don't hesitate to [create a new issue](https://github.com/AmpersandTarski/ampersand/issues).

## Exit status

In case the Ampersand compiler is called by software and fails, it is useful to have an exit code to give some information about the nature of the failure. The Ampersand compiler [produces the following exit codes](https://github.com/AmpersandTarski/Ampersand/blob/development/src/Ampersand/Basics/Exit.hs):

| Code | Name | Meaning |
| :--- | :--- | :--- |
| 0 | Success | Compilation has terminated without failures |
| 2 | Fatal | This is a software error in the Ampersand compiler, that should never have occured in operational use. Please [report an issue](https://github.com/AmpersandTarski/ampersand/issues). |
| 10 | Invalid | The script is not valid and the compiler has produced error messages to help you diagnose your mistake\(s\). |
| 20 | Inconsistent | The population would violate invariants. The compiler cannot generate a violation-free database. |
| 30 | Invalid SQL | An SQL query gives other results than the semantics of Ampersand prescribes. This should never occur, so please [report an issue](https://github.com/AmpersandTarski/ampersand/issues). |
| 50 | Ampersand violations | There are sanity checks on your script that have produced violations, so the compiler will not generate an application. |
| 60 | Composer | The installation of Composer failed, so the front-end application will not work. This is most likely a configuration error. |
| 70 | Wrong arguments | The command-line arguments by which the compiler was called contain errors. Inspect the compiler output for a diagnosis. |
| 80 | Back-end | The compiler failed to install the prototype framework. This is most likely a configuration error. |

