## Testing your installation
 * Open a [command prompt](http://www.c3scripts.com/tutorials/msdos/open-window.html).
 * Type "Ampersand --version". The expected behaviour is that Ampersand replies with the version of Ampersand. It will look something like:
```
C:> ampersand.exe --version
Ampersand v3.1.0[master:2fa348f*], build time: 08-Sep-15 14:04:58 West-Europa (z
omertijd)
```
The version number is important to specify, whenever you have a question of like to report an issue. It **really** helps us when you add the version number, **including everything between the brackets** when you contact us.


## Test to see if you can build your first prototype

Ampersand allows you to generate a working prototype of your ampersand model. An Ampersand prototype is a website that requires a webserver to run on and a (My)SQL database server. This chapter describes the prerequisites for getting such prototypes up, and running.

Suppose you have an ampersand script called myModel.adl with the following content:

```
CONTEXT HelloWorld IN ENGLISH
PURPOSE CONTEXT HelloWorld
{+This script allows you to check whether or not you can actually use Ampersand.-}

REPRESENT MyName TYPE ALPHANUMERIC
sessionMyName :: SESSION * MyName [UNI]
MEANING "My name can be known in the current session."

ROLE User MAINTAINS "Please specify your name"
RULE "Please specify your name": '_SESSION'[SESSION] |- sessionMyName;sessionMyName~
VIOLATION (TXT "You can use the 'Registration' interface to do so.")

INTERFACE Registration (sessionMyName) FOR User: '_SESSION'[SESSION]
BOX[ "My name is" : sessionMyName
   ]

INTERFACE "Hello, World": '_SESSION'[SESSION]
BOX[ "Hello, world. My name is" : sessionMyName 
   ]

--$The following rule is there for the sole purpose of having the role ExecEngine defined.
ROLE ExecEngine MAINTAINS "Dummy rule"
RULE "Dummy rule": I[SESSION] |- I[SESSION]

ENDCONTEXT
```

Don't worry if you do not understand what everything in this script means. That isn't important for now. You can generate the prototype website for the script in file `myModel.adl` by typing the command:

     ampersand --proto myModel.adl

This creates a directory `myModel.proto` (in the current directory), that contains the prototype website. Obviously, you will need a web server and a database server to run the prototype. This is discussed at [Installing Ampersand](installing_ampersand.md).

Usually, you would have some demands regarding particulars of the generation. For example, you may want to generate the website in a specific directory, specify a particular CSS file for this website, etc. For the complete syntax of the Ampersand executable, see the chapter about the [command line interface](../command-line-interface/command-line-interface.md)

