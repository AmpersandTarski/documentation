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
  5. find your *htdocs* directory (Default is *c:\xampp\htdocs*). This is the place where the generated prototype directory has to be. We urge you to create a subfolder here where you will be storing your prototypes after you have generated them. For the rest of this documentation, we assume that you have created the directory `C:\xampp\htdocs\prototypes`.

Now you are done with the installation part, and you are ready to create your first running prototype.


