---
description: >-
  As from version 4.0.0 Ampersand has a command structure that allows you to use
  Ampersand from the command line.
---

# Commands \(vs. 4.0.0 and later\)

## Commands without a script

1. `ampersand --version`  to find out which version of Ampersand you are using.
2. `ampersand --help` to summarize all level one commands

## Commands with a script

In practice, run `ampersand --help` instead of consulting the following list, just to be sure that the commands match the version you are using. The following list has been taken from version 4.0.0.

The general structure of commands is `ampersand [options]* COMMAND`. The following commands are available:

1. `ampersand [options]* check <filename>`

   Check your model for syntax errors and type errors.

2. `ampersand [options]* daemon <filename>`

   Check your model continuously while editing it.

3. `ampersand [options]* dataanalysis <filename>`

   Export a data model as plain Ampersand script, for analysing Excel-data.

4. `ampersand [options]* devoutput <filename>`

   Generate some diagnostic files, intended for developers of ampersand.

5. `ampersand [options]* documentation <filename>`

   Generate a functional design document, to kick-start your functional specification.

6. `ampersand [options]* population <filename>`

   Generate an .xmlx file containing the populations of your script.

7. `ampersand [options]* proofs <filename>`

   Generate a report containing proofs.

8. `ampersand [options]* proto <filename>`

    Generate a prototype from your specification.

9. `ampersand [options]* print <filename>`

   Generate a single `.adl`-file of your script \(prettyprinted\)

10. `ampersand [options]* uml <filename>`

     Generate a data model in UML 2.0 style.

11. `ampersand [options]* validate <filename>`

    Compare results of rule evaluation in Haskell and SQL, for testing expression semantics. This requires command line php withMySQL support.

12. `ampersand [options]* test <filename>`

     Run testsuites in a given directory. This is meant to do regression testing during automatic build \(e.g. Travis-ci\)

## Filename

The `filename` in a command typically has suffix `.adl` \(which stands for Ampersand Description Language\). If you omit the suffix `.adl`, Ampersand adds it for you. The filename conventions of your operating system apply \(whether you have Windows, MacOS, or Linux\).

## Options

You may use one of the first three options to specify how verbose your output will be. The other options can be used at random and mixed freely.

1. `--verbosity VERBOSITY`

   Verbosity: silent, error, warn, info, debug

2. `-v, --verbose`

   Enable verbose mode: verbosity level "debug"

3. `--silent`

   Enable silent mode: verbosity level "silent"

4. `--[no-]time-in-log`

   Enable/disable inclusion of timings in logs, for the purposes of using diff with logs \(default: enabled\)

5. `--[no-]terminal`

   Enable/disable overriding terminal detection in the case of running in a false terminal

6. `--terminal-width INT`

   Specify the width of the terminal, used for pretty-print messages

7. `--ampersand-yaml AMPERSAND-YAML` Override project ampersand.yaml file \(overrides any AMPERSAND\_YAML environment variable\)
8. `--outputDir DIR`

   Specify the directory where your output will be written to

