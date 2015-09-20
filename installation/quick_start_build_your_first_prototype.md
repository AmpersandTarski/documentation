## Quick start: Build your first prototype

Ampersand allows you to generate a working prototype of your ampersand model. An Ampersand prototype is a website that requires a webserver to run on and a (My)SQL database server. This chapter describes the prerequisites for getting such prototypes up, and running.

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

Don't worry if you do not understand what everything in this script means. That isn't important for now. You can generate the prototype website for the script in file `myModel.adl` by typing the command:

     ampersand --proto myModel.adl

This creates a directory `myModel.proto` (in the current directory), that contains the prototype website. Obviously, you will need a web server and a database server to run the prototype. This is discussed at [Installing Ampersand](installing_ampersand.md)`.

Usually, you would have some demands regarding particulars of the generation. For example, you may want to generate the website in a specific directory, specify a particular CSS file for this website, etc. For the complete syntax of the Ampersand executable, see the chapter about the [command line tool](commandLineTool/commandlinetool.md)


## Installing and running a prototype website
Installing a prototype consists of copying the generated contents into the `htdocs` directory of the webserver. 

Running a prototype consists of making sure that the webserver and database server are running, and then calling (this directory on) the webserver from any web browser such as firefox, or chrome. Other browsers may also work.
