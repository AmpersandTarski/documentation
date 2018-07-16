---
description: >-
  You can deploy your Ampersand program on any system that runs Docker. That
  could be in the cloud, on your own laptop, on a server in a data center, on
  your smartphone, you name it.
---

# Deploying your Prototype using Docker

Please watch [this video](https://youtu.be/XqHTJfTVnoQ) \(8 minutes\). It discusses what Docker does to bring up your program as a web application on your own machine.

## Prerequisites

You need a computer that runs Docker and that has an internet connection. That lets you generate a Docker image from your Ampersand source code.

You need a computer that runs Docker to run your program on. That can be the same \(localhost\).

## What Docker does for you

Docker does everything needed to make your program run. It does that automatically, based on recipes and configurations you provide. Docker loads the images it needs from Docker Hub and cashes them in a local Docker repository to prevent reloading every time you compile a new version.

Programs run in containers. A container is a virtual computer that runs images. Your application may consist of one or more containers.

## What you do

In your working directory you need:

1. A file called `Dockerfile`, which contains the recipe for creating a Docker image
2. A file called `docker-compose.yml`, which contains the runtime configuration of the containers running your program.
3. The source code of your Ampersand program, as specified in `Dockerfile` and `docker-compose.yml.`

Then from you command line interface run:

`docker-compose up -d`

Sit back and watch. Don't worry, the second time around Docker downloads much less as it builds up its local image repository.

