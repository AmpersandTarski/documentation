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
* In order to run prototypes, you need a database and a web server. We suggest [XAMPP](https://www.apachefriends.org/download.html) which is both popular and easy to install.

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

