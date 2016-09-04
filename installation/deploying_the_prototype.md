Once you have built your prototype, it must be deployed before you can use it. We assume your model was myModel.adl, and it was generated using the command

```.sh
ampersand myModel.adl -proto 
```
Without any specific configuration, this would result in the directory `myModel.proto` being generated in the same directory as your script. 

## Copy the generated prototype to the web server
This copying is something that you will be doing often, so you may want to automate this e.g. by means of a script. Let us assume that
* *gendir* is the directory that contains the generated prototype files,
* *webdir* is the directory in which the webserver expects the prototype files.
You only need to copy all files from *gendir* to *webdir*.

Notes:
* as per the previous section, if you generated a prototype in the directory `myModel.proto`, then that would be your *gendir*.
* we urge you to have a specific directory on the webserver where you store prototypes. The [configuration page](../installation/configuration.html) already suggested to use `c:\xampp\htdocs\prototypes\` as the base for storing prototypes. If you want to be able to run multiple prototypes at the same time, you may want to use a subdirectory for each of them. In that case, *webdir* would be `c:\xampp\htdocs\prototypes\myModel\`.
* If you use XAMPP and are unsure about the location where to put your generated files, have a look at [this tutorial](https://blog.udemy.com/xampp-tutorial/).

## Running the prototype 
Assuming that your webserver and database server are running, all you need to do now is point your browser to the location of the prototype. In the `myModel` example, you would want to browse to [http://localhost/prototypes/myModel](http://localhost/prototypes/myModel). 

## What if...
* You have trouble with the database (e.g. you cannot login, or do not have the correct authorization)? Check out the [instructions](../installation/configuration.html) for creating a properly authorized user `ampersand` for the database.
