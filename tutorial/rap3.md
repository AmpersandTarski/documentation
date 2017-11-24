# RAP3

This section introduces the tool you will use during the course: [RAP3](http://ampersand.tarski.nl/RAP3). This tool stores Ampersand-scripts in which you can specify, analyze and build information systems. It runs in the cloud, so all you need is a browser and to [click here](http://rap.cs.ou.nl/RAP3) to start using it.

## Identifying yourself

RAP3 keeps your work together under a student number. So click on the button 'login' on the left top of the screen.  
Register with your own student number and e-mail. Note that this application has no connection with the OU database, so be careful to fill in the right number on this and future occasions.  
This login-screen is also the screen to logout later.

## Disclaimer

RAP3 is under development. You can expect to find teething problems \(kinderziektes\) in the software. Please notify us by [making an issue in our issue registration system](https://github.com/AmpersandTarski/RAP/issues). This way you can help improve Ampersand's tooling, for which the Ampersand-team is very grateful.

## Making your first Ampersand script

When you click on the blue plus-sign on the top-right side in the menu bar in your screen, you can make a new script. Clicking this opens an editor screen in which you can type your very first Ampersand script.

![](/assets/Script editor new script.png)

## Assignment

* Copy the script from [the first page of this tutorial](/tutorial/what-is-an-information-system.md). The code starts with `CONTEXT` and ends with `ENDCONTEXT`. Paste the script in the RAP3 editor and click on the big blue button "beware to save your work before leaving the editer field!". The script is now saved in RAP3.
* Next, click on the blue Compile button. When RAP3 is finished compiling your script, the compiler message should read "Finished processing your model" and three blue buttons should be visible below that.


   ![](/assets/Finished processing your model.png)



* Try out the buttons: Click on the button Diagnosis. When RAP3 is done, a link will be added below the button. Click on the button Func. spec + pictures and again a link will be added. These two functions create pdf-files with information about the code that has been compiled. During the course you can look into them.
* For now: move on to the Prototyp button. Click the button and then click the new link "Launch Prototype".

During the remainder of this course you will compile and run your own scripts in this way, so it pays to familiarize yourself with it.

* Let's add the possibility to register teachers in this system. The interface code needs to be at the end, other information can be added anywhere above that:

  * Define a new concept with the keyword CONCEPT: `CONCEPT Teacher`with a short description.
  * Define the relation between Module and Teacher with the keyword RELATION:  
    `RELATION providedBy[Module*Teacher]`  
    `MEANING "A module is provided by a teacher"`

  * You can define an initial set of teachers and relate them to a module following the examples already available in the script. But you can also add the data later using the prototype. Adding initial data in the script is a lot of work. There is another method, using spreadsheets. This is the next topic in this tutorial.

  * Add an interface for the teachers in the tab for Modules, right above the line for "Course":  
    `, "Teacher" : providedBy  CRUD`

  * Save, compile, create protype, reinstall database and see the result.

  * Note that we have not defined any rules about teachers, so anything you fill in, is OK for this system.

* Try to understand what you see in the script by making other changes to the program. Compile and run your changes, to learn by doing. Try for instance to create a new course with modules and teachers. Demonstrate your changes to your peers and discuss the results.

## What have you learned?

After finishing your assignment, you have learned:

* how to use RAP3 to write, save and compile code.
* the first basic keywords of Ampersand script and their effect on the prototype.



