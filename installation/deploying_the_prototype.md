# How to deploy your prototype

Suppose you have made a `.adl`-file and you want to run it as a web-application on the internet. This recipe tells you how to do that.

## Ingredients

1. To run your prototype, you need a server that is visible from the web, on which [docker](https://docs.docker.com/engine/installation/) and [docker-compose](/Install Docker Compose | Docker Documentation) are installed. Assume it has domain name `my.server.com`
2. To get your `.adl`-file on the server, you need a way to transport that file to your server. You can do this for example by SFTP, using an SFTP-client such as FileZilla, but you can also do it by cloning a repository to your server, using `git`.
3. To execute commands on your server, you need a command line interface \(CLI\). This is typically done by starting an SSH-session, using an SSH-client such as Putty.

## Deploying

The deployment consists of the following steps:

1. Copy your `.adl`-file to a working directory on your server.  
2. Get two docker-files from internet by executing the following commands:

   ```
    wget https://raw.githubusercontent.com/AmpersandTarski/Ampersand/feature/dockerize/docker/sample/Dockerfile
    wget https://raw.githubusercontent.com/AmpersandTarski/Ampersand/feature/dockerize/docker/sample/docker-compose.yml
   ```

   On servers other than Linux, you may need another command than `wget`, but the files are the same.

3. In the file called `docker-compose.yml` you must specify your own `.adl`-file:
   ![](/assets/CHANGE_ME.png)
4. Run docker-compose to deploy your prototype by executing the following command:
   ```
    docker-compose up
   ```

   Alternatively, if you want your prototype to keep running after you have closed your CLI, execute:
   ```
    docker-compose up -d
   ```
5. Browse to the web-location `my.server.com`, where the prototype is being served.

## In trouble?

* Check if there is a firewall that blocks the port from internet. Make sure that port 80 is open for http-traffic.
* Check the port settings and adapt `docker-compose.yml` if you must use a port other than port 80.
* Use a recent browser. We have developed Ampersand on FireFox and tested it on FireFox and Chrome, so you should be fine with one of these two.
* If you have trouble with the database \(e.g. you cannot login, or do not have the correct authorization\), check out the [instructions](../installation/configuration.html) for creating a properly authorized user `ampersand` for the database. As you can see in `docker-compose.yml`, the database itself is accessible through port 8080.
