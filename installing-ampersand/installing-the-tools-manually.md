# Installing the tools manually

## Installing an Ampersand compiler

The following instructions presume that you are familiar with the basics of your own computer.

### The easy way: Use a prebuilt executable file

The easiest way is by use of available executables. We release frequently. Have a look at [our latest release](https://github.com/AmpersandTarski/Ampersand/releases). For Windows users, there is a file called ampersand.exe in the release. Put it on your disk on a location of your choice, for example /Ampersand/bin/. Make sure your $PATH environment variable contains this location, so the command "ampersand" is known on the command line. That's all. Note that double-clicking`ampersand.exe`will not work, because it is a command line tool.

Now you can compile and check your Ampersand scripts. Most likely, however, you want to generate a functional specification or a prototype you will need some other software as well.

## Other software you will need

1. In order to generate PDF files that contain your functional specification, you need a LaTeX compiler. On Windows, we recommend [**MiKTeX**](http://miktex.org/). On Linux and MacOS, we recommend [**texlive**](https://www.tug.org/texlive/).
2. All graphical output is created using [**GraphViz**](http://www.graphviz.org/). You need to install it. **Make sure** _**dot**_ **and** _**neato**_ **are in your path**  \(set the $PATH environment variable if necessary\). Also, if you compile it from source, make sure you install it with gts support.
3. In order to run the generated prototype, you need **Apache** \(or another web server\) with **SQL** and **PHP v 7.0 or higher**. In Windows, a practical way is to install [**XAMPP**](https://www.apachefriends.org/download.html)
   * You must create an account in SQL for 

     `localhost`

     , that has a user called 

     `ampersand`

      with a password 

     `ampersand`

     , with rights to create/read/update/delete databases as well as their contents. If you use phpmyadmin this could look like:

     ![](../.gitbook/assets/databaseuserconfig.jpg)

   * The webserver must run on `localhost` . By default you will use port 80, but you could change that if required. See the documentation of you webserver. 
4. You need to install [**Composer**](https://getcomposer.org/download/), because at runtime, the prototype has dependencies of libraries . Composer will take care of that.

### The less easy way: Installing from Source

If there is no executable for your operating system, or if you prefer to build an Ampersand compiler yourself, follow these steps:

> 1. Install stack, the haskell tool stack. [instructions are here](http://docs.haskellstack.org/en/stable/install_and_upgrade.html)
> 2. use [git](https://git-scm.com/) to clone the latest version of Ampersand. The code can be found at [github](https://github.com/AmpersandTarski/Ampersand/tree/master). \(the master branch is our stable branch\)
> 3. Open a command line terminal, and go to the directory that contains the file named `ampersand.cabal`
> 4. Then, close your command line terminal and reopen another one \(this helps to reload the environment variables that the `stack` installation may have added or modified\), 
> 5. Let `stack` install everything you need to compile \(see the Notes below!\) by executing:
>
>       `$ stack setup`
>
> 6. Build the Ampersand.exe file \(see the Notes below!\) by executing: `$ stack install`

This will build an Ampersand-compiler named "ampersand.exe" and install it into your path.

Testing your installation

* Open a [command prompt](http://www.c3scripts.com/tutorials/msdos/open-window.html).
* Type "Ampersand --version". The expected behaviour is that Ampersand replies with the version of Ampersand. It will look something like:

  ```text
  C:> ampersand.exe --version
  Ampersand v3.1.0[master:2fa348f*], build time: 08-Sep-15 14:04:58 West-Europa (z
  omertijd)
  ```

  The version number is important to specify, whenever you have a question of like to report an issue. It **really** helps us when you add the version number, **including everything between the brackets** when you contact us.

## Test to see if you can build your first prototype

Ampersand allows you to generate a working prototype of your ampersand model. An Ampersand prototype is a website that requires a webserver to run on and a \(My\)SQL database server. This chapter describes the prerequisites for getting such prototypes up, and running.

Suppose you have an ampersand script called myModel.adl with the following content:

```text
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

```text
 ampersand --proto myModel.adl
```

This creates a directory `myModel.proto` \(in the current directory\), that contains the prototype website. Obviously, you will need a web server and a database server to run the prototype. This is discussed at [Installing Ampersand](installing-the-tools-manually.md).

Usually, you would have some demands regarding particulars of the generation. For example, you may want to generate the website in a specific directory, specify a particular CSS file for this website, etc. For the complete syntax of the Ampersand executable, see the chapter about the [command line interface](../the-command-line-tool/)\*\*\*\*

**Notes:**  
1. Do **not** use Hackage to get ampersand. It does not contain all non-haskell files. \(See [issue \#213](https://github.com/AmpersandTarski/ampersand/issues/213)\)  
2. `stack` memory usage may require other applications to be terminated \(e.g. on 8GB Windows systems\). If `stack` terminates prematurely, re-invoking the command will pick-up where it stopped.  
3. `stack` may terminate on various errors [\(See this issue\)](https://github.com/commercialhaskell/stack/issues/2617), e.g. that it doesn't have permission to access or rename files. Again, if `stack` terminates prematurely, re-invoking the command will pick-up where it stopped. Users have mentioned having to restart `stack` several times before it would finally complete building Ampersand.exe.

#### Footnotes
