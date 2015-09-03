# Prototypes

Ampersand allows you to generate a working prototype of your ampersand model. An Ampersand prototype is a website that requires a webserver to run on and a (My)SQL database server. This chapter describes the prerequisites for getting such prototypes up, and running.

## Generating a prototype (website)

In order to generate the prototype, you need (as a minimum):
* (a version of) the Ampersand.exe executable;
* an ampersand script/model (in a file);
* a DOS box (command prompt), where the executable is in the search path, and the script is in the current directory.

You can generate the prototype website for the script in file `myModel.adl` by typing the command:

     ampersand --proto myModel.adl

This creates a directory `myModel.proto` (in the current directory), that contains the prototype website. Obviously, you will need a web server and a database server to run the prototype. This is discussed in the chapter `Installing and running a prototype (website)`.

Usually, you would have some demands regarding particulars of the generation. For example, you may want to generate the website in a specific directory, specify a particular CSS file for this website, etc. For the complete syntax of the Ampersand executable, see the chapter about the [command line tool](commandLineTool/commandlinetool.md#Syntax)

## Installing and running a prototype website
In order to run the generated prototype, you need:
* a working SQL database server;
* a working (configured) web server that can run PHP (vs ??? and up).


 




