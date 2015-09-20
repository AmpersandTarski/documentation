# Installation



## Testing your installation
 * Open a [command prompt](http://www.c3scripts.com/tutorials/msdos/open-window.html).
 * Type "Ampersand --version". The expected behaviour is that Ampersand replies with the version of Ampersand. It will look something like:
```
C:> ampersand.exe --version
Ampersand v3.1.0[master:2fa348f*], build time: 08-Sep-15 14:04:58 West-Europa (z
omertijd)
```
The version number is important to specify, whenever you have a question of like to report an issue. It **really** helps us when you add the version number, **including everything between the brackets** when you contact us.

## Quick start: Build your first prototype

Suppose you have an ampersand script called myModel.adl with the following content:

```
CONTEXT HelloWorld IN ENGLISH

  CONCEPT Greeting "Something that is said"
  RELATION reply [Greeting*Answer] 
  
  RULE bePolite : I[Greeting] |- reply;reply~
  ROLE Friend MAINTAINS bePolite

  POPULATION Greeting CONTAINS
     [ "Hello!"]

  INTERFACE Welcome (reply) FOR Friend : '_SESSION'[SESSION];V[SESSION*Greeting]
  BOX [ greeting: I
      , reply   : reply
      ]
ENDCONTEXT
```

You can generate the prototype website for the script in file `myModel.adl` by typing the command:

     ampersand --proto myModel.adl

This creates a directory `myModel.proto` (in the current directory), that contains the prototype website. Obviously, you will need a web server and a database server to run the prototype. This is discussed in the chapter `Installing and running a prototype (website)`.

Usually, you would have some demands regarding particulars of the generation. For example, you may want to generate the website in a specific directory, specify a particular CSS file for this website, etc. For the complete syntax of the Ampersand executable, see the chapter about the [command line tool](commandLineTool/commandlinetool.md)


## Installing and running a prototype website
Installing a prototype consists of copying the generated contents into the `htdocs` directory of the webserver. 

Running a prototype consists of making sure that the webserver and database server are running, and then calling (this directory on) the webserver from any web browser such as firefox, or chrome. Other browsers may also work.
