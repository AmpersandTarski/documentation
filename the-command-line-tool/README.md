# The Command Line tool

## NAME

ampersand.exe

## SYNOPSIS

```bash
ampersand [OPTIONS] [FILE]
```

## DESCRIPTION

**ampersand** takes a file as input. It must contain a valid ampersand script that complies to the [syntax](../ampersand-syntax/) of ampersand.

When used without any [options](options.md), it will check if the input is valid. If so, it will do nothing, if not, it will tell you what is wrong.

## OPTIONS
The [list of options](options.md) contains all compiler options.

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



