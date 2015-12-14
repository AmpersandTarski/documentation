## (Re)Installing and Testing Haskell on Windows Machines

This section documents the (re)installation of Haskell for Windows machines. The audience is expected to have the basic knowledge of cmd.exe (i.e. know how to set/view paths and other environment variables). 

A complete reinstallation of Haskell consists of the following steps.

1. Prepare for installation of a (new) Haskell Platform.
2. Download and install the most recent [Haskell Platform](https://www.haskell.org/platform/)
3. Fix any issues.
 
The following sections document each of these steps. You are encouraged to read them once before actually starting, so that you get an idea of what you'll be looking at. Note that this chapter does not deal with the installation of additional stuff, such as LaTeX, graphviz etc. That's documented [elsewhere]

## Prepare for installation of a (new) Haskell Platform.

First, if you have any old Haskell (ghc, cabal) stuff, then clean it up as follows:
1. Uninstall the HaskellPlatform. This is a normal uninstall, as with any other software package.
2. Clean up any left-behinds. 
  - Look (for example) in your profile directory (i.e. 'C:\\Users\\***youraccount***\\AppData\\***profile***' where 
    - ***youraccount*** is the directory that contains your account, and
    - ***profile*** is the directory that contains your profiles (Local, Roaming, etc.). Any directories called 'cabal' or 'ghc' should be deleted.
  - You may use apps such as [AgentRansack](https://www.mythicsoft.com/agentransack) for finding such stuff. Search for 'cabal' or 'ghc' in the filename, and delete any such files or directories if you are sufficiently sure that they go with the installation of Haskell itself.
  * 
  
## Download and install the most recent Haskell Platform.

Now that you do not have any Haskell (cabal, ghc) stuff on your computer, you can start with the following procedure:
1. Downloading the [Haskell Platform](https://www.haskell.org/platform/)
2. Install the downloaded file as you would any other application. You do not need any admin rights.
3. Run `cabal install` to ensure some cabal packages are imported.
 
## Testing the installation by creating Ampersand.exe
Note: the very first time you do this, `ghc` may use 2GB of RAM (or more?) so you should make sure at least 2GB RAM is free/available.

1. `cd` to the 'ampersand' directory in your local git repo. You know you're there if you see that it contains the file `ampersand.cabal`
2. Execute `cabal update`. 
   * If `cabal.exe` cannot be found, you should add the path to the `PATH` enviornment variable. 
   * If you get an errormessage about a proxy, execute `set HTTP_PROXY=::`, and then retry.
3. Execute `cabal install`. This will create the file `ampersand.exe` (sometimes you need to look around a bit to find where it is generated).

## Fixing issues

The following issues have been found to exist:
- Roaming profile (size) problems
- Cabal sandboxing

### Fixing roaming profile (size) problems.

By default, cabal uses your (roaming) profile for storing packagelists, packages etc. Also, ghc uses it for storing .conf files about such packages. There are some cases where this causes problems:
- It will significantly deteriorate boot-performance if you use a so-called 'roaming profile', because cabal stores large amounts of data in your roaming profile (all of which is transferred over the network when you boot in your home-domain)
- You may run into roaming profile space constraints imposed on  you by your network admin. If you do, ghc/cabal fails.
You can instruct cabal to use another directory, e.g. your local profile, or any other, by following the procedure below. In this procedure, we use ***Roaming*** to indicate the directory of your roaming profile (so '***Roaming***\cabal' is the 'cabal' directory in your roaming profile).

Here are the procedure steps:
1. Execute `cabal update` from the prompt. This creates all sorts of stuff, including a file called `config`.
2. Edit the `config` file in the '***Roaming***\cabal' directory (any regular text-editor will do).
3. In the config file, replace all occurrences of the '***Roaming***\cabal' directory with the directory path in which you want cabal to store all of its stuff.
4. In the text block `install-dirs user`, remove `--` and one space before the text `prefix:` (first line in the section). So in total, you remove three characters, and only two spaces remain before `prefix:`.
5. save the `config` file
6. Remove all files from the ***Roaming***\cabal' directory, except (of course) for the file `config` file.
7. Delete the 'ghc' directory from the `***Roaming***` directory (if it exists).
	
Note: the '***Roaming***\cabal' directory will still contain stuff such as log files and some other stuff. However, it is not nearly as much as it would otherwise have been.

### Cabal sandboxing
You can create a cabal sanbox for ampersand. This means that all dependencies are being stored in the ampersand directory rather than in the package datbase on your machine. This facilitates cleaning up, and other Haskell packages that you install outside of ampersand cannot break your installation. It does not change the build procedure.

Creating a sandbox is as follows:
1. `cd` to the 'ampersand' directory in your local git repo. You know you're there if you see that it contains the file `ampersand.cabal`
2. execute `cabal sandbox init`.







