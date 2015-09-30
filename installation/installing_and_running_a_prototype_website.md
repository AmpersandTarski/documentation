
## Using Xampp
You are free to use any webserver you like, but for your convenience, here are some words to help you out if you hardly know any of this kind of stuff. Here, we assume you use [xampp](https://www.apachefriends.org/index.html).

  1. Download and install xampp is explained at their site.
  2. Start the xampp control panel. It should be somewhere in the windows start menu. 
  3. Make sure you start both modules **apache** and **MySQL**. Notice the ports mentioned in the control panel for apache. It is **80** by default.
  4. Use phpMyAdmin (press the Admin button on the XAMPP Control pannel) to create the default ampersand user:
     * user: ampersand
     * password: ampersand
     * Machine: localhost
     * privileges: all privileges
  5. find your *htdocs* directory (Default is *c:\xampp\htdocs*). This is the place where the generated prototype directorie has to be. You could also create a subfolder for this purpose. I use *C:\xampp\htdocs\ampersandPrototypes* for my prototypes. In this way, they do not interfere with other applications. But that's totally up to yourself.
  6. Open a browser (make sure you have a recent one!) and go to *http://localhost:80/ampersandPrototypes/myModel* This should start the prototype in your browser. Note:
     * :80 is the port number of your web server. This defaults to :80, so if it is 80, you can leave it out.
     * ampersandPrototypes is only if you use a subfolder as suggested. You could use other name, or leave it out all together. You can set an [environment variable](../command-line-interface/environment_variables.md), so you do not have the fuss of copying to this location.
     * myModel is the name of your context. If you are unsure, it is also the exact name of the generated folder of your prototype.
  7. The first time, there is no database installed. You will see an error message. Fortunately, there is a button to install it for you. 


