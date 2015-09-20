

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
 * a working (configured) web server that can run PHP (5.5 or higher). The webserver must run on `localhost` and listen on port 80, which is pretty default.
A practical way to arrange for this is to install [XAMPP](https://www.apachefriends.org/download.html), and create the `ampersand` database account.

