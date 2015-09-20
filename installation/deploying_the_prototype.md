Once you have built your prototype, it must be deployed before you can use it. We assume your model was myModel.adl, and it was generated using the command

```.sh
ampersand myModel.adl -proto 
```
Without any specific configuration, this would result in the directory ```myModel.proto``` being generated in the same directory as your script. 

## Copy the generated directory to the htdocs directory of your webserver
This should be the easy part. Depending on your webserver, find the directory where your webserver expects html documents. When you use xampp, and you are unsure, have a look at [this tutorial ](https://blog.udemy.com/xampp-tutorial/)

## Make sure you have the right authorization in SQL
Ampersand will need the right to create a database and manipulate with tables and so on. By default, it will use as username/password combination ampersand / ampersand (both lowercase). Make sure, your sql installation has a user configured that way, or have a look at [configuration](configuration) to setup other credentials

## Open a browser, and navigate to your website. 