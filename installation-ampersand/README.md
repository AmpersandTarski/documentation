# Installing Ampersand

For different purposes there are different ways of installing Ampersand.

## How to avoid installing Ampersand

Go to [http://ampersand.tarski.nl/RAP3](http://ampersand.tarski.nl/RAP3). Just register and get started right away. At no cost \(for you, for now\). This lets you run your Ampersand scripts and generate functional specifications.

## How to use Ampersand on your own laptop

If you want to be independent and use Ampersand on your own laptop, use Docker. Section [Deploying your Prototype](deploying-your-prototype-using-docker.md) tells you how. Here is an overview:

1. Make sure Docker runs on your laptop or install it if it doesn't.
2. Copy the files `Dockerfile` and `docker-compose.yml` and adapt them for your own Ampersand prototype.
3. Run your `.adl`-file on the Docker platform.

### How to compile Ampersand programs manually

Ampersand is great for rapid prototyping. If you want to run prototypes on your own computer, follow the instructions in section [Installing the tools manually](installing-the-tool.md). For running a prototype on your own computer, it needs a webserver that can run javascript, PHP7, the PHP composer, and a \(My\)SQL or MariaDB database server. For generating functional specifications, you might use LaTeX, Markdown, Word .docx and other formats. This chapter gives an overview of the Ampersand production line for whoever needs to circumvent the automated process.

### How to install your own copy of RAP3 on a server of your own choosing

RAP3 is an Ampersand repository, in which multiple users can store and use their Ampersand scripts. If you run a class or have a team at work, you might want a RAP3 clone of your own rather than work from [http://ampersand.tarski.nl/RAP3](http://ampersand.tarski.nl/RAP3). In that case, consult [the tools we use at Ampersand](https://ampersandtarski.gitbooks.io/the-tools-we-use-for-ampersand/content/installation_of_rap.html). This is work in progress.

### How to change Ampersand itself

If you want to change the Ampersand compiler for your own purposes, you need access to the source files, and a Haskell development environment. Section [Installing Ampersand](installing-the-tool.md) tells you how.

The remainder of this chapter explains in detail all the things you need to get you up and running with Ampersand. The instructions presume that you are familiar with your own computers.

