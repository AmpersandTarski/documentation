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

When used without specifying OPTIONS, it will just check if the input is valid. If so, it will do nothing, if not, it will tell you what is wrong.

## Options

### Generic Program Information

#### -h, -?, --help
Print a usage message briefly summarizing these command-line options and the bug-reporting address, then exit.

#### -V, --version
Print the version number of ampersand to the standard output stream. This version number should be included in all bug reports (see below).

### Other options

## TODO: Layout and organize stuff below:

List of options:
  --altGraphics
          generate graphics in an alternate way. (you may experiment with
          this option to see the differences for yourself)
  --blackWhite
          do not use colours in generated graphics
  --crowfoot
          generate crowfoot notation in graphics.
  --css=file
          Custom.css file to customize the style of the prototype.
  --dbName=NAME (-d)
          database name (overrules environment variable CCdbName, defaults
          to filename)
  --diagnosis
          diagnose your Ampersand script (generates a .pdf file).
  --export[=file] (-e)
          export as plain Ampersand script.
  --fspec=FORMAT (-f)
          generate a functional specification document in specified format
          (FORMAT=[Asciidoc, Context, Docbook, Html, Latex, Man, Markdown,
          Mediawiki, Opendocument, Org, Pandoc, Plain, Rst, Rtf, Texinfo,
          Textile]).
  --interfaces (-x)
          generate interfaces.
  --language=LANG
          Pick 'NL' for Dutch or 'EN' for English, as the language to be
          used in your output. Without this option, output is written in
          the language of your context.
  --namespace=NAMESPACE
          prefix database identifiers with this namespace, in order to
          isolate namspaces.
  --no-static-files
          Do not generate static files into the prototype directory
  --noDiagnosis
          omit the diagnosis chapter from the functional specification
          document.
  --outputDir=DIR (-o)
          output directory (dir overrules environment variable
          CCdirOutput).
  --pop-xlsx
          Generate an .xmlx file containing the populations of your script.
  --proto[=DIRECTORY] (-p)
          generate a functional prototype (overrules environment variable
          CCdirPrototype).
  --reference-table
          generate a table of references in the Natural Language chapter,
          for instance for legal traceability.
  --theme=THEME
          differentiate between certain outputs e.g. student
  --verbose (-V)
          verbose error message format.

## Environment Variables
The behavior of **ampersand** is affected by the following environment variables.
* **CCdbName**  Sets the name of the database that is to be generated. Can be overruled by --dbName
* **CCdirOutput** Sets the default output directory for generated assets. Can be overruled by --outputDir 
* **CCdirPrototype** Sets the default directory where functional prototypes are being generated. Can be overruled by --proto

## Exit status

## Bugs
 We are happy to recieve [bug reports at AmpersandTarski](https://github.com/AmpersandTarski/ampersand/issues) . However, please try to help us by first checking that it has not been reported allready. You can do so by searching the issues. When in doubt however, don't hesitate to [create a new issue](https://github.com/AmpersandTarski/ampersand/issues). 
