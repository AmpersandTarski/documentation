# Ampersand & Docker

Different aspects of the Ampersand user's environment can be containerized
1. Ampersand compiler
1. Modelling environment for Ampersand user (incl. VSCode extensions)
1. Prototype environment, including:
    * Apache webserver with PHP
    * Ampersand compiler
    * PHP-composer
    * NPM (Node Package Manager)
    * Gulp
1. Multi-stage prototype build, only:
    * Apache webserver with PHP
    * Generated code
1. Prototype database
    * MariaDB with default user/password

A docker-compose file is available to deploy prototype, database and supporting tools (like phpMyAdmin)

## Deploy your local environment to run Ampersand prototypes
The [project-template repository](https://github.com/AmpersandTarski/project-template) contains a docker-compose and Dockerfile to generate, build and run a prototype application.

Run: `docker-compose up -d` to deploy the following services:
* Apache webserver
    * Serves your prototypes
    * Available in the browser at `http://localhost:80`
* phpMyAdmin dashboard
    * Available in the browser at `http://localhost:8080`
* MariaDB database
    * Not directly exposed on host