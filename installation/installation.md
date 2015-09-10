# Installation



## Windows
A pretty recent windows binary can be **[downloaded for windows](https://cdn.rawgit.com/AmpersandTarski/webFiles/master/executables/windows/ampersand.exe)** . We try to update it frequently, using a git repository for that purpose. 

## Installing from Source
If for some reason a binary package is not available for your platform, you can install from source:

 * First, install the [Haskell platform](https://www.haskell.org/platform/)
 * then use the cabal tool to get the latest release of pandoc:

```
cabal update
cabal install ampersand
```

Of course, when you are familiar with Git, you could clone the [ampersand repository](https://github.com/AmpersandTarski/ampersand) to get the current development version.  


##Other software you will need
* In order to generate PDF files that contain your functional specification, you need a LaTex compiler. We recomend [MiKTeX](http://miktex.org/). Make sure to run [the update wizard](http://miktex.org/howto/update-miktex)!
* All graphical output is created using [GraphViz](http://www.graphviz.org/). You need to install it. Make sure *dot* and *neato* are in your path.
* In order to run the generated prototype, you need the following on the computer that you are using:
 * a working SQL database server. You must ensure that this server has an account that has a user called `ampersand` with a password `ampersand`, with rights to create/read/update/delete databases as well as their contents.
 * a working (configured) web server that can run PHP (5.6 or higher). The webserver must run on `localhost` and listen on port 80, which is pretty default.
A practical way to arrange for this is to install [XAMPP](https://www.apachefriends.org/download.html), and create the `ampersand` database account.


## Configuration

After you have installed ampersand, make sure to follow the steps below, to get you on your way:

### Setting your path
Make sure ampersand.exe can be found, by putting it somewhere in you path. [See how you set Windows $PATH variable](http://youtu.be/9UFNdFw9KHs)

### Other environment variables
Optionally, you may want to set some other environment variables. Have a look at the section [*Environment Variables* of the command line interface](../command-line-interface/command-line-interface) to see what variables exist.


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
