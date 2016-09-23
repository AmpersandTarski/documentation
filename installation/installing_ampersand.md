
## Installation instructions
The following instructions presume that you are familiar with the basics of your own computer.

### The easy way: Use a prebuilt executable file

The easiest way is by use of available executables. We release frequently. Have a look at [our latest release](https://github.com/AmpersandTarski/Ampersand/releases).


### The less easy way: Installing from Source

If there is no executable for your operating system, or if you prefer to build one yourself, follow these steps:

> 1. Install stack, the haskell tool stack. [instructions are here](http://docs.haskellstack.org/en/stable/install_and_upgrade.html)
> 1. use [git](https://git-scm.com/) to clone the latest version of Ampersand. The code can be found at [github](https://github.com/AmpersandTarski/Ampersand/tree/master). (the master branch is our stable branch)
> 1. Open a command line terminal, and go to the directory that contains the file named `ampersand.cabal`
> 1. Then, have stack install everything you need to compile:
      ```$ stack setup```
> 1. Issue the following command:
    ````$ stack install```` 

This will build an Ampersand-compiler named "ampersand.exe" and install it into your path.


**Notes:**
  1. Do **not** use Hackage to get ampersand. It does not contain all non-haskell files. (See [issue #213](https://github.com/AmpersandTarski/ampersand/issues/213))

## Other software you will need 
1. In order to generate PDF files that contain your functional specification, you need a LaTex compiler. We recomend **[MiKTeX](http://miktex.org/)**. Make sure to run [the update wizard](http://miktex.org/howto/update-miktex)! 
2. All graphical output is created using **[GraphViz](http://www.graphviz.org/)**. You need to install it. **Make sure *dot* and *neato* are in your path**. Also, if you compile it from source, make sure you install it with gts support.
3. In order to run the generated prototype, you need **Apache** (or another web server) with **SQL** and **PHP v 5.6 or higher**.  A practical way to arrange for this in Windows is to install **[XAMPP](https://www.apachefriends.org/download.html)**
 * You must create an account in SQL for `localhost`, that has a user called `ampersand` with a password `ampersand`, with rights to create/read/update/delete databases as well as their contents. If you use phpmyadmin this could look like:![](databaseuserconfig.jpg)
 * The webserver must run on `localhost` . By default you will use port 80, but you could change that if required. See the documentation of you webserver. 

* You need to install **[Composer](https://getcomposer.org/download/)**, because at runtime, the prototype has dependencies of libraries . Composer will take care of that. 
