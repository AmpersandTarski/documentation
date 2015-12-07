

## Windows
A pretty recent windows binary can be **[downloaded for windows](https://github.com/AmpersandTarski/webFiles/blob/master/executables/windows/ampersand.zip?raw=true)** . We try to update it frequently, using a git repository for that purpose. 

If you use the binary, you can skip the next section (Installing from Source), and continue at `Other software you will need`

## Installing from Source

Because of an issue with the latest version of GHC (versions 7.10.1 and 7.10.2) on windows, you need ghc ***7.8.4*** . An easy way to do so is by downloading the haskell platform ***2014.2.0.0***, which is the version previous to the current version.
The reason that we cannot use the latest version is because of a bug in the toolchain for Windows for ghc 7.10.  As soon as ghc 7.10.3 or higher is published, we will conform to the newest version again.

If you allready have Haskell 7.10 running, and you are not using Windows, you could use the ampersand sourcecode in the branch called *upgrade_to_haskell_7.10*. With ghc 7.8.4 you can use the master branch.

The source for Ampersand can be found on Github:

>  https://github.com/AmpersandTarski/ampersand

You need a recent Haskell compiler. [www.haskell.org](https://www.haskell.org/)

Go to the directory where you have your clone of the source files: (this is the directory where you find the file _ampersand.cabal_ 
```.bash
> cabal update
> cabal install
```
Note: Do **not** use Hackage to get ampersand. It does not contain all non-haskell files. (See [issue #213](https://github.com/AmpersandTarski/ampersand/issues/213))


##Other software you will need
* In order to generate PDF files that contain your functional specification, you need a LaTex compiler. We recomend [MiKTeX](http://miktex.org/). Make sure to run [the update wizard](http://miktex.org/howto/update-miktex)! 
* All graphical output is created using [GraphViz](http://www.graphviz.org/). You need to install it. **Make sure *dot* and *neato* are in your path**. Also, if you compile it from source, make sure you install it with gts support.
* In order to run the generated prototype, you need the following on the computer that you are using:
 * a working SQL database server. You must ensure that this server has an account that has a user called `ampersand` with a password `ampersand`, with rights to create/read/update/delete databases as well as their contents.
 * a working (configured) web server that can run PHP (5.5 or higher). The webserver must run on `localhost` and listen on port 80, which is pretty default.
A practical way to arrange for this is to install [XAMPP](https://www.apachefriends.org/download.html), and create the `ampersand` database account.

