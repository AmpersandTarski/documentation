# Options

Command-line options are used to tell the ampersand compiler what to do. Some of the options are still experimental. Since Ampersand-v3.5.3, it is possible to use a configuration file, reducing the need to rewrite the same options every time you use ampersand.exe. A configuration file can be used using the `--config` option.

### -h, -?, --help

Print a usage message briefly summarizing the most common command-line options and the bug-reporting address, then exit. When used in combination with `--verbose`, it shows all command-line options. Use this to get the actual list of options of your Ampersand compiler.

### -V, --version

Print the version number of ampersand to the standard output stream. Please mention this information in every bug report you submit \(see below\).

## Other options

### `--ECA`

generate documentation with ECA rules.

### `--add-semantic-metamodel`

The metamodel in Formal-ampersand is loaded together with your own model. Use this feature in conjunction with `--meta-tables` to get a metamodel populated with your own script into the database.

### `--altGraphics`

generate graphics in an alternate way. \(you may experiment with this option to see the differences for yourself\)

### `--atlas-without-terms`

Temporary option to create an Atlas without terms. This feature is used in RAP3 for performance reasons.

### `--blackWhite`

do not use colours in generated graphics. Use this feature if you must print in black and white, to obtain better results than printing a coloured source on a black-and-white pringer.

### `--config=config.yaml`

By default the Ampersand compiler looks in the working directory for a config file \(`.yaml`\) with the same filename as the Ampersand script. Use this feature to redirect to another file. Use `--sampleConfigFile` to get a template.

### `--crowfoot`

generate crowfoot notation in conceptual models. This is used to better match the preferences of some database engineers in the generated documentation.

### `--crud-defaults=CRUD`

Set the default CRUD function for services. This function is explained in [interface terms](options.md). This feature is used temporarily to gain experience with CRUD and learn about its semantics.

### `--customizations=DIRECTORY [, DIRECTORY]*`

copy one or more directories into the generated prototype. This overrules the default directory, which is called `customizations`.

### `--dbName=NAME (-d)`

database name. Use this for choosing the name of the SQL-database. This overrules environment variable `CCdbName`. It defaults to the filename of your Ampersand script.

### `--dev, --ignore-invariant-violations`

Allow to build a prototype, even if there are invariants that are being violated. \(See [issue 728](https://github.com/AmpersandTarski/Ampersand/issues/728) on Github\)

### `--diagnosis`

diagnose your Ampersand script. Use this if you wish to generate a document containing only the diagnosis chapter .

### `--do-not-trim-cellvalues`

Do not ignore leading and trailing spaces in .xlsx files that are INCLUDED in the script. Normally, Ampersand removes spaces around cell values in .xlsx files when transforming the cell value to atoms. Use this to enforce that spaces around cell values are meaningful.

### `--export[=file] (-e)`

export as plain Ampersand script.

### `--force-reinstall-framework`

re-install the prototype framework. This discards any previously installed version. Use this to eradicate any doubt about a fresh reinstall.

### `--fpa`

Generate Function Point Analysis chapter. Use this to include a measure of the functional complexity \(size\) of the generated application into your functional specification document. This feature is currently out of order.

### `--fpa-excel`

generate an Excel workbook \(FPA\_&lt;filename&gt;.xml\). Use this to obtain the base data used in the function point analysis. This feature is currently out of order.

### `--fspec=FORMAT (-f)`

generate a functional design document in specified output format \(FORMAT=\[Asciidoc, Context, Docbook, Docx, Html, Latex, Man, Markdown, Mediawiki, Opendocument, Org, Pandoc, Pdf, Plain, Rst, Rtf, Texinfo, Textile\]\). Use this to obtain documentation in the format of your own choice.

### `--gen-as-rap-model`

generate populations for use in RAP3.

### `--haskell`

generate internal data structure, written in Haskell. Use this for debugging.

### `--help (-h, -?)`

get \(this\) usage information.

### `--services (-x)`

generate services. This feature does not work properly at the moment.

### `--language=LANG`

Pick 'NL' for Dutch or 'EN' for English, as the language to be used in your output. Without this option, output is written in the language of your context. Text snippets in other languages than the one specified are ignored. Use this to get a functional specification in the language of your choice.

### `--meta-file`

Generate an .adl file that contains the relations of formal-ampersand, populated with the the meta-population of your own .adl model.

### `--meta-tables`

Populate the metamodel of Ampersand with the contents of your own script. Use this feature in conjunction with `--add-semantic-metamodel` to get a metamodel populated with your own script into the database. This is used for higher-order purposes, specifically in RAP3.

### `--namespace=NAMESPACE`

prefix database identifiers with this namespace, in order to isolate namespaces within the same database. This feature was used in RAP2 to isolate students' work in separate tables.

### `--newNormalizer`

Use the new optimizer at your own risk. Used for research purposes.

### `--noDiagnosis`

omit the diagnosis chapter from the functional design document.

### `--noGraphics`

omit the generation of graphics during generation of the functional design document.

### `--oldNormalizer`

use the old optimizer at your own risk. Used for research purposes.

### `--outputDir=DIR (-o)`

output directory. Use this if you want the Ampersand compiler to redirect the output to a location of your choice. This overrules environment variable `CCdirOutput`.

### `--pop-xlsx`

Generate an .xmlx file containing the populations of your script. Meant to be used as an Excel-file in which you can add bulk data and reuse that for loading the data into your application.

### `--proofs`

generate derivations in HTML-format. Use this to see how Ampersand derives computer instructions from your rules.

### `--proto[=DIRECTORY] (-p)`

generate an information system. Use this to verify your analysis or to obtain a working prototype from your Ampersand script. In some cases, the result will be good enough for production. This option overrules environment variable `CCdirPrototype`.

### `--prototype-framework-version=VERSION`

tag, branch or SHA of the prototype framework on Github. Use this to select a specific version when generating an information system.

### `--reference-table`

generate a table of references in the Natural Language chapter, for instance for legal traceability.

### `--sampleConfigFile`

write a sample configuration file \(sampleconfig.yaml\). Use this to save yourself the trouble of looking up an example configuration file.

### `--sql-bin-tables`

generate binary tables only in SQL database. Use this to verify that the generated system works with binary tables as well as with wide tables.

### `--sqlHost=HOSTNAME`

set SQL host name \(Defaults to \`localhost\`\). Use this to let the generated system know which database to connect to.

### `--sqlLogin=USER`

set SQL user name \(Defaults to \`ampersand\`\). Use this to let the generated system log into the database.

### `--sqlPwd=PASSWORD`

set SQL password \(Defaults to \`ampersand\`\). Use this to let the generated system log into the database.

### `--sqldump`

generate a dump of SQL queries. Use this for debugging purposes.

### `--test`

Used for test purposes only.

### `--testRule=RULE`

Show contents and violations of specified rule. Use this for diagnostic purposes.

### `--uml`

Use this to generate conceptual models as a UML 2.0 data model.

### `--validate`

Compare results of rule evaluation in Haskell and SQL. Use this to debug the SQL code generator to validate the meaning of all rules, which are evaluated both in the compiler and in the database. This option requires command line php with MySQL support.

### `--verbose (-V)`

run the compiler in verbose mode. Use this for diagnostic purposes.

### `--version (-v)`

show version and exit. Please use this when reporting bugs on [Github](https://github.com/AmpersandTarski/Ampersand/issues).

