# Installation



## Windows
[a pretty recent windows binary](https://cdn.rawgit.com/AmpersandTarski/webFiles/master/executables/windows/ampersand.exe) can be downloaded for windows. We try to update it pretty often, using a git repository for that purpose. 

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
* All graphical output is created using [GraphViz](http://www.graphviz.org/). You need to install it. Make sure dot and neato are in your path.

* 

## Configuration

After you have installed ampersand, make sure to follow the steps below, to get you on your way:

### Setting your path
Make sure ampersand.exe can be found, by putting it somewhere in you path. [See how you set Windows $PATH variable](http://youtu.be/9UFNdFw9KHs)

### Other environment variables
Optionally, you can configure some environment variables, so you do not have to tell ampersand the location of these paths:
 * **The output directory for ampersand:** the environment variable <code>CCdirOutput</code> can be set to hold the output directory for ampersand. alternatively, you can use a command-line swich: --outputDir=<dir>. If none are used, the current directory will we the output directory.
# ''The output directory for prototype:'' the environment variable <code>CCdirPrototype</code> can be set to hold the output directory for prototype. 

== Testing your installation ==
#Open a [http://www.c3scripts.com/tutorials/msdos/open-window.html MS-DOS Window] in order to get a command prompt. ([http://www.c3scripts.com/tutorials/msdos/ more on Windows' DOS-commands])
#Type "Ampersand --help"<ENTER><br>The expected behaviour is that Ampersand replies with a list of options you can use. If the system says it does not know any command named Ampersand, this means it cannot find the file Ampersand.exe. You should fix the PATH settings.



# Follow the [[PostInstallation | post-install instructions]]
# Running Ampersand<br>Suppose you have an Ampersand script you want to compile. The result will be a PDF file, which contains a functional  specification generated from your script. 
##Open a [http://www.c3scripts.com/tutorials/msdos/open-window.html MS-DOS Window] in order to get a command prompt. ([http://www.c3scripts.com/tutorials/msdos/ more on Windows' DOS-commands])
##[http://www.c3scripts.com/tutorials/msdos/cd.html Navigate to the directory] where you store your Ampersand script:<br><code>cd D:\myAmpersandScripts</code><br>Let us assume your Ampersand script is in a file called "<code>permits.adl</code>".
##type the command<br><code>Ampersand permits.adl -f latex --verbose</code>
##Watch as Ampersand compiles and analyzes your script.<br>Remarks:
##*Without <code>--verbose</code>, the Ampersand Prototype Generator will work silently, so long as no mistakes occur.
##*If the file "<code>ampersand.exe</code>" cannot be found, Windows will tell you that it did not recognize Ampersand as an internal or external command.
##*If LaTeX or GraphViz cannot be found, the compilation will abort halfway. Inspect the error message to see which is the case.
##*If the Ampersand Prototype Generator cannot find a file called "<code>permits.adl</code>", it will produce an error message.
##*If your installation is correct, the only error messages you get originate from the mistakes in your script. Consult your textbook, your teacher, or [http://ampersand.sourceforge.net the Ampersand wiki] for help.
##*Any error message that starts with "fatal" is a major bug in the system and should be reported directly to [[Ampersand contact | one of the Ampersand contacts]]. As long as Ampersand is under development, we cannot exclude the possibility that fatal-messages occur.
##Upon success, the file "<code>permits.pdf</code>" is added to the output directory
##If you want to generate to a different location, use the switch -o, for example:<br><code>Ampersand permits.adl -f latex -o D:\htdocs\myFirstPrototype\perm.pdf --verbose</code>

== Generating prototypes in Windows ==
This feature is for advanced users.
# The prototype generator is part of the full installation of ampersand ({{URL of Ampersand}})
# Running the Ampersand Prototype Generator<br>Suppose you have an Ampersand script, for which you want to generate a prototype. This prototype is a web application, so you will need a HTTP/PHP server. If you don't already have one, [http://www.apachefriends.org/en/xampp-windows.html install XAMPP], which is both popular and easy to install. In the sequel, I assume that you have a directory  that your HTTP/PHP server uses to look for web-applications (such as the prototype you are about to generate).
##[http://www.c3scripts.com/tutorials/msdos/open-window.html Open a MS-DOS Window] in order to get a command prompt. ([http://www.c3scripts.com/tutorials/msdos/ more on Windows' DOS-commands])
##[http://www.c3scripts.com/tutorials/msdos/cd.html Navigate to the directory] where you store your Ampersand script. Let us assume your Ampersand script is in a file called "applications.adl".
##type the command<br><code>prototype applications.adl -pD:\htdocs\myFirstPrototype\ --verbose</code>
##Watch as the Ampersand Prototype Generator puts all the necessary files in place.<br>Remarks:
##*Without <code>--verbose</code>, the Ampersand Prototype Generator will work silently, so long as no mistakes occur.
##*If the file "<code>prototype.exe</code>" cannot be found, Windows will tell you that it did not recognize prototype as an internal or external command.
##*If the path "<code>D:\htdocs\myFirstPrototype\</code>" does not exist, the Ampersand Prototype Generator will create it.
##*If the Ampersand Prototype Generator cannot find a file called "<code>applications.adl</code>", it will produce an error message.
##Your web application is in place, ready to run<br>Remarks:
##*If you want to move the application, simply move the whole directory tree, for example:<br><code>copy D:\htdocs\myFirstPrototype "C:\Program files\web\htdocs\demo"</code>
#Running your application<br>Your application requires access to a MySQL database. If you don't already have a MySQL database, [http://www.apachefriends.org/en/xampp-windows.html install XAMPP], which is both popular and easy to install.
##Open a browser. The the Ampersand Prototype Generator has been tested with [http://support.mozilla.org/en-US/kb/install-firefox-windows Firefox]. The behaviour on other browsers may be unpredictable, as Ampersand is still under development.
##type the URL of your generated application. If it is on your laptop, use <br><code><nowiki>http://localhost/myFirstPrototype/</nowiki></code>
##Now you should see the Open University logo, together with things that have been generated from your Ampersand script.<br>Remarks:
##*If your MySQL server requires a different login than "<code>root</code>" with an empty password, you will get error messages from the MySQL server. Generate your application again, adding the missing information on the command line:<br><code>prototype applications.adl -pD:\htdocs\myFirstPrototype\ --verbose  --sqlHost=jupiter --sqlLogin=dbadmin --sqlPwd=secret</code>
