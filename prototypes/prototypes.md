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

## Prerequisites for running prototypes
In order to run the generated prototype, you need the following on the computer that you are using:
* a working SQL database server. You must ensure that this server has an account that has a user called `ampersand` with a password `ampersand`, with rights to create/read/update/delete databases as well as their contents.
* a working (configured) web server that can run PHP (vs 5.5 and up). The webserver must run on `localhost` and listen on port 80, which is pretty default.
A practical way to arrange for this is to install [XAMPP](https://www.apachefriends.org/download.html), and create the `ampersand` database account.

## Installing and running a prototype website
Installing a prototype consists of copying the generated contents into the `htdocs` directory of the webserver. 

Running a prototype consists of making sure that the webserver and database server are running, and then calling (this directory on) the webserver from any web browser such as firefox, or chrome. Other browsers may also  work.
