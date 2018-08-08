---
description: >-
  When you need to run the Ampersand compiler from a command line, this chapter
  gives you the required instructions.
---

# Running the Ampersand compiler

## NAME

`ampersand`

Runs the Ampersand compiler from the command line in Windows, MacOS, and Linux.

## SYNOPSIS

```bash
ampersand [OPTIONS] [FILE]
```

## DESCRIPTION

**ampersand** takes a file as input. It must contain a valid ampersand script, i.e. a script that complies to the [syntax](../ampersand-syntax/) and semantics of ampersand. The compiler will not generate any output unless the script is valid.

When used without any [options](https://github.com/AmpersandTarski/documentation/tree/5c45435a2b5cdd69129ba6ee9401819331fb531e/the-command-line-tool/options.md), it will check if the input is valid. If so, it will do nothing, if not, it will tell you what is wrong.

## OPTIONS

The [list of options](https://github.com/AmpersandTarski/documentation/tree/5c45435a2b5cdd69129ba6ee9401819331fb531e/the-command-line-tool/options.md) contains all compiler options.

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

We are happy to receive [bug reports at AmpersandTarski](https://github.com/AmpersandTarski/ampersand/issues) . However, please try to help us by first checking that it has not been reported allready. You can do so by searching the issues. When in doubt however, don't hesitate to [create a new issue](https://github.com/AmpersandTarski/ampersand/issues).

## AUTHOR

## SEE ALSO

\*\*\*\*

## Exit status

