## Command-line options (also known as "switches")

Command-line options are used to tell the ampersand compiler what to do. Some of the options are still experimental. 
Since Ampersand-v3.5.3, it is possible to use a configuration file, reducing the need to rewrite the same options every time you use ampersand.exe. A configuration file can be used using the `--config` switch.  

### Generic Program Information

#### -h, -?, --help
Print a usage message briefly summarizing the most common command-line options and the bug-reporting address, then exit.
When used in combination with `--verbose`, it shows all command-line options.

#### -V, --version
Print the version number of ampersand to the standard output stream. Please mention this information in every bug report you submit (see below).

### Other switches


####  --altGraphics
generate graphics in an alternate way. (you may experiment with
this option to see the differences for yourself)
####  --blackWhite
do not use colours in generated graphics
####  --config=config.yaml
Use a specified config file (*.yaml). See `--sampleConfigFile` to get a template
####  --crowfoot
generate crowfoot notation in graphics.
####  --css=file
Custom.css file to customize the style of the prototype.
####  --dbName=NAME (-d)
database name (overrules environment variable CCdbName, defaults
to filename)
####  --diagnosis
Only used in combination with --fspec. Diagnose your Ampersand script (generates a .pdf file).
####  --export[=file] (-e)
export as plain Ampersand script.
####  --fspec=FORMAT (-f)
generate a functional specification document in specified format
(FORMAT=[Asciidoc, Context, Docbook, Html, Latex, Man, Markdown,
Mediawiki, Opendocument, Org, Pandoc, Plain, Rst, Rtf, Texinfo,
Textile]).
####  --interfaces (-x)
generate interfaces.
####  --language=LANG
Pick 'NL' for Dutch or 'EN' for English, as the language to be
used in your output. Without this option, output is written in
the language of your context. Note that this switch is about the output language. If you use multiple languages (using `IN DUTCH` or `IN ENGLISH` at the appropriate places in your script), this is the way to select the language in which the output document is written.
####  --namespace=NAMESPACE
prefix database identifiers with this namespace, in order to
isolate namspaces.
####  --no-static-files
Do not generate static files into the prototype directory
####  --noDiagnosis
omit the diagnosis chapter from the functional specification
document.
####  --outputDir=DIR (-o)
output directory (dir overrules environment variable
CCdirOutput).
####  --pop-xlsx
Generate an .xlsx file containing the populations of your script.
####  --proto[=DIRECTORY] (-p)
generate a functional prototype (overrules environment variable
CCdirPrototype).
####  --reference-table
generate a table of references in the Natural Language chapter,
for instance for legal traceability.
####  --sampleConfigFile
write a sample configuration file (sampleconfig.yaml)
####  --verbose (-V)
verbose error message format.
