In order to run prototypes, you must have installed a web server (e.g. Apache), a database server ((My)SQL), PHP (5.x, but we're switching to PHP 7). You can organize this by yourself, or read on and follow the instructions.

## Using Xampp
This section is primarily intended to serve those that want a quick and hasslefree installation. To do this, we use [XAMPP](https://www.apachefriends.org/index.html), as follows

  1. Download and install XAMPP as explained at their site. Use all defaults that come with the installation (in particular: use `C:\XAMPP` as the directory to install XAMPP into).
  2. Start the XAMPP control panel. You can choose to start this at the end of the installation. Otherwise, you can find it in the start-menu. 
  3. Make sure you start both modules **apache** and **MySQL**. Notice the ports mentioned in the control panel for apache. It is **80** by default.
  4. Click on the `Admin` button in the MySQL line to start phpMyAdmin
  5. Look for the row with tabs `Databases`, `SQL`, etc. Select the tab `User accounts`, and click on the link `Add user account` to create the default ampersand user:
     * In the box `Login Information`, type
         * text field): ampersand
         * Host name (Local): localhost
         * password (Use text field): ampersand
         * Re-type: ampersand
     * In the box `Global privileges`, check the checkbox `Check all`.
     * Click the button `Go` at the bottom of the page to add the new user.
  5. find your *htdocs* directory (Default is *c:\xampp\htdocs*). This is the place where the generated prototype directory has to be. You could also create a subfolder to store generated prototypes into, e.g. `C:\xampp\htdocs\prototypes`.
  6. Generate a prototype (e.g. for `MyModel`) and copy the generated directory (`MyModel`) that contains the code into `C:\xampp\htdocs\prototypes`. Thus, your protype files now are in `C:\xampp\htdocs\prototypes\MyModel`
  6. Open a browser (make sure you have a recent one!) and go to *http://localhost:80/prototypes/MyModel*. This should start the prototype in your browser. Notes:
     * :80 is the port number of your web server. This defaults to :80, so if it is 80, you can leave it out.
     * `/prototypes/MyModel` is valid provided you copied the contents of the generated prototype into `c:\xampp\htdocs\prototyes`. If you used another directory structure, then change path accordingly.
     * MyModel is the name of your context. If you are unsure, it is also the exact name of the generated folder of your prototype.
  7. The first time, there is no database installed. You will see an error message. Fortunately, there is a button to install it for you. If you want to be sure a database is created you can use phpMyAdmin to inspect the database.


