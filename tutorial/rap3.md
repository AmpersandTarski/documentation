# RAP3

This section introduces the tool you will use during the course: [RAP3](http://ampersand.tarski.nl/RAP3). This tool stores Ampersand-scripts in which you can specify, analyze and build information systems. It runs in the cloud, so all you need is a browser and to [click here](http://rap.cs.ou.nl/RAP3) to start using it.

## Identifying yourself

RAP3 keeps your work together under a student number. So click on the button 'login' on the left top of the screen.  
Register with your own student number and e-mail. Note that this application has no connection with the OU database, so be careful to fill in the right number on this and future occasions.  
This login-screen is also the screen to logout later.

## Disclaimer

RAP3 is under development. You can expect to find teething problems \(kinderziektes\) in the software. Please notify us by [making an issue in our issue registration system](https://github.com/AmpersandTarski/RAP/issues). This way you can help improve Ampersand's tooling, for which the Ampersand-team is very grateful.

> **Important note:   
> RAP3 is being improved constantly, new releases can be done daily.   
> Currently all account information and scripts will be deleted with each new release.   
> So:  keep a local copy of your scripts and if you cannot login anymore, just re-create your account.**

## Making your first Ampersand script

When you click on the blue plus-sign on the top-right side in the menu bar in your screen, you can make a new script. Clicking this opens an editor screen in which you can type your very first Ampersand script.

![](/assets/Script editor new script.png)

## Assignment

* Copy the code for the system enrollment from [this page](/tutorial/what-is-an-information-system.md). The code starts with `CONTEXT` and ends with `ENDCONTEXT`. Paste the script in the RAP3 editor and click on the big blue button "beware to save your work before leaving the editer field!". The script is now saved in RAP3.

* Next, click on the blue Compile button. When RAP3 is finished compiling your script, the compiler message should read "Finished processing your model" and three blue buttons should be visible below that.

![](/assets/Finished processing your model.png)

* Try out the buttons: Click on the button Diagnosis. When RAP3 is done, a link will be added below the button. Click on the button Func. spec + pictures and again a link will be added. These two functions create pdf-files with information about the code that has been compiled. During the course you can have a better look there.
* For now: move on to the Prototype button: Click the button and then click the new link "Launch Prototype".
* Now you see the information system you have just compiled from the code. You are already familiar with the look and feel. Click the Overview button in the top-left of the screen and have a look around.

During the remainder of this course you will compile and run your own scripts in this way, so it pays to familiarize yourself with it. **A note of caution: currently a new release of RAP3 will destroy all that is in the database, also your scripts. So save a copy of you script locally at the end of each working session.**

You are now going to change the code and view the results in RAP3. Close the browser-tab with the running prototype and go back to the browser-tab RAP3 with the editor.

* If you want to save the original script, go to Myscripts, create a new script and copy the same code in there.

* Let's add the possibility to register teachers in this system. The interface code needs to be at the end, other information can be added anywhere above that:

  * Define a new concept with the keyword CONCEPT: `CONCEPT Teacher`with a short description. Note that concept names start with an Uppercase and that all quotes need to be double quotes.
  * Define the relation between Module and Teacher with the keyword RELATION:  
    `RELATION providedBy[Module*Teacher]`  
    `MEANING "A module is provided by a teacher"`  
    Note that relation names start with lowercase.

  * You can define an initial set of teachers and relate them to a module following the examples already available in the script. But you can also add the data later using the prototype. Adding initial data in the script is a lot of work. There is another method, using spreadsheets. This is the next topic in this tutorial.

  * Add an interface for the teachers in the third tab, the one for Modules. Below the codelines for "Modules" and above the line for "Course":  
    `, "Teacher" : providedBy  CRUD`

  * Save, compile, create protype, launch prototype, reinstall database and see the result in the third tab called "Modules".  
    Note that you need to reinstall the database because the old database is still there, but the database structure has changed in the application.

  * Note that we have not defined any rules about teachers, so anything you fill in, is OK for this system.

* Try to understand what you see in the script by making other changes to the program. Compile and inspect the changes, to learn by doing. Try for instance to create a new course with modules and teachers. Demonstrate your changes to your peers and discuss the results.

## What have you learned?

After finishing your assignment, you have learned:

* how to use RAP3 to write, save and compile code.
* the first basic keywords of Ampersand script and their effect on the prototype.



