
## Installation instructions

There are several ways to install Ampersand on your machine.

###  1a) Use a prebuilt binary

The easiest way is by use of binaries. We try to update it frequently, using a [repository](https://github.com/AmpersandTarski/webFiles/tree/master/executables) for that purpose.

Currently, a binary is available for:

  * **Windows**. 
    * [Download binary](https://github.com/AmpersandTarski/webFiles/blob/master/executables/windows/ampersand.zip?raw=true)
    * unzip the binary, and put ampersand.exe in a directory that is in your path.
    * Also make sure you install the required other software that you need (see below)
  * **Mac OS X**
    * Sorry, not available yet, but `Coming soon`

    

### 1b) Installing from Source

If there is no binary for your operating system, or if you prefer to build it for yourself, this can be done by following these steps:

> 1. Download and install the most recent [Haskell Platform](https://www.haskell.org/platform/)
> 1. use [git](https://git-scm.com/) to clone the latest version of ampersand:  https://github.com/AmpersandTarski/ampersand.git
> 1. Open a command line terminal, and go to the directory that contains the file named `ampersand.cabal`
> 1. Issue the following commands:
>  * cabal update
>  * cabal sandbox init
>  * cabal install
   
This will build you the executable named ampersand.exe


**Notes:**
  * : Do **not** use Hackage to get ampersand. It does not contain all non-haskell files. (See [issue #213](https://github.com/AmpersandTarski/ampersand/issues/213))
  * for windows users, there is a more elaborate instruction, at the [next page](ReInstallHaskellOnWindowsMachines.md)

### 2) Other software you will need
* In order to generate PDF files that contain your functional specification, you need a LaTex compiler. We recomend [MiKTeX](http://miktex.org/). Make sure to run [the update wizard](http://miktex.org/howto/update-miktex)! 
* All graphical output is created using [GraphViz](http://www.graphviz.org/). You need to install it. **Make sure *dot* and *neato* are in your path**. Also, if you compile it from source, make sure you install it with gts support.
* In order to run the generated prototype, you need the following on the computer that you are using:
 * a working SQL database server. You must ensure that this server has an account that has a user called `ampersand` with a password `ampersand`, with rights to create/read/update/delete databases as well as their contents.
 * a working (configured) web server that can run PHP (5.5 or higher). The webserver must run on `localhost` and listen on port 80, which is pretty default.
A practical way to arrange for this is to install [XAMPP](https://www.apachefriends.org/download.html), and create the `ampersand` database account.

