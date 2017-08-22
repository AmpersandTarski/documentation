For different purposes there are different ways of installing Ampersand.

# How to avoid installing Ampersand
Just go to http://ampersand.tarski.nl/RAP3. Register and get started right away. At no cost (for you, for now).

# How to install Ampersand on your own laptop
If you want to be independent and use Ampersand offline, you can install it on your own laptop. Section [Installing Ampersand](/installation/installing_ampersand.md) tells you how. Here is an overview:

1. You need an Ampersand compiler. It exists as an executable file `Ampersand.exe` for Windows.
3. For generating functional specification documents you will need GraphViz \(for generating graphics such as conceptual models and data models\), and LaTeX.

## How to run your prototype on your own computer
Ampersand is great for rapid prototyping. If you want to run prototypes on your own computer, follow the instructions in section [Installing and running a prototype](/installation/installing_and_running_a_prototype_website.md). For running a prototype on your own computer, it needs a webserver that can run javascript, PHP7 \(often PHP5.6 or later will do fine\), the PHP composer, and a \(My\)SQL or MariaDB database server.

## How to install your prototype on the web
When your prototype takes a more definitive shape, you might want to run it as a web-application on the internet. Grab your Ampersand-script and follow the instructions in [deploying your prototype](/installation/deploying_the_prototype.md).

## How to install RAP3 on a server
RAP3 is an Ampersand repository, in which multiple users can store and use their Ampersand scripts. If you run a class or have a team at work, you might want a RAP3 clone of your own rather than work from http://ampersand.tarski.nl/RAP3.
In that case, consult [the tools we use at Ampersand](https://ampersandtarski.gitbooks.io/the-tools-we-use-for-ampersand/content/installation_of_rap.html). This is work in progress.

## How to change Ampersand itself
If you want to change the Ampersand compiler for your own purposes, you need access to the source files, and a Haskell development environment. Section [Installing Ampersand](/installation/installing_ampersand.md) tells you how.


The remainder of this chapter explains in detail all the things you need to get you up and running with Ampersand. The instructions presume that you are familiar with your own computers.

