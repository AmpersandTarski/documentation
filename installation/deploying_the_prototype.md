The prototyping cycle consists of the following steps:
1. Build the prototype
2. Copy the generated prototype to the web server
3. Browse to the web-location where the prototype is being served.

This chapter talks about these steps in a bit more detail.

## Building a prototype

This is done by letting ampersand work on your script, using the `-proto` option. We assume your script file is called `myModel.adl`, and your model is called `myModel`. Generation of the prototype is then done by the command

```.sh
ampersand myModel.adl -proto 
```
Without any specific configuration, this would result in the directory `myModel.proto` being generated in the same directory as your script is in. This directory contains the files that constitute your prototype.

## Copy the generated prototype to the web server
The next step is copying the generated files to the web server. As you will be doing this quite often, you may want to automate this step e.g. by means of a script. Let us assume that
* *gendir* is the directory that contains the generated prototype files,
* *webdir* is the directory in which the webserver expects the prototype files.

This step consists of copying all files from *gendir* to *webdir*.

Notes:
* if you used `ampersand myModel.adl -proto` to generate the prototype, then *gendir* would be `myModel.proto`.
* if you use `c:\xampp\htdocs\prototypes` for storing your prototypes on the webserver (as we suggested on the [configuration page](../installation/configuration.html)), then `c:\xampp\htdocs\prototypes\` is *webdir*
* If you want to be able to run multiple prototypes at the same time, you may want to use a subdirectory for each of them. In that case, *webdir* would become e.g. `c:\xampp\htdocs\prototypes\myModel\`.
* If you use XAMPP and are unsure about the location where to put your generated files, have a look at [this tutorial](https://blog.udemy.com/xampp-tutorial/).

## Running the prototype 
Assuming that your webserver and database server are running, all you need to do now is point your browser to the location of the prototype. In the `myModel` example, you would want to browse to [http://localhost/prototypes](http://localhost/prototypes) or [http://localhost/prototypes/myModel](http://localhost/prototypes/myModel).

Notes
* Be sure to use a recent browser. We recommend to use FireFox or Chrome (Internet Explorer is known to have some issues here and there).

## What if...
* You have trouble with the database (e.g. you cannot login, or do not have the correct authorization)? Check out the [instructions](../installation/configuration.html) for creating a properly authorized user `ampersand` for the database.
