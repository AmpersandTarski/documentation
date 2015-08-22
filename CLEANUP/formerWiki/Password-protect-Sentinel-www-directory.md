The following should be done from the ```sentinel``` account on sentinel.tarski.nl. We assume the passwords are kept in ```/home/sentinel/authentication/nvwa.htpasswords```, but this can be any file, as long as it's not reachable by the www server.

First, create a ```.htaccess``` file in the directory that needs protection (e.g. ```git/sentinel/www/ampersand/NVWA/```):

    nano git/sentinel/www/ampersand/NVWA/.htaccess

Paste the contents below (after changing ``AuthName`` to an appropriate description.)

    # Redirect http request to https
    RewriteEngine On
    RewriteCond %{HTTPS} !=on
    RewriteRule ^ https://%{HTTP_HOST}%{REQUEST_URI} [L,R=301]

    # Require password
    AuthName "Beveiligd NVWA prototype"
    AuthType Basic
    AuthUserFile /home/sentinel/authentication/nvwa.htpasswords
    require valid-user

If not present yet, create an empty password file:

    touch /home/sentinel/authentication/nvwa.htpasswords

And add each user with:

    htpasswd /home/sentinel/authentication/nvwa.htpasswords USERNAME

(Instead of using ```touch```, it is also possible to add ```-c``` to the first call of ```htpasswd```)