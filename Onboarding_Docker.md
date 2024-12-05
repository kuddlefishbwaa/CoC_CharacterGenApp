# Docker
This file is set up to describe how to set up a Docker conatiner to host your web app and work on it from this folder.

## Setup
Make sure that docker desktop is installed and open in your computer that will be hosting the conainer. Then follow these steps.

- In command line or other shell, find the location of project that you want to work on or make one.
```
cd 'YOUR FILE PATH\PROJECT NAME'
```

### If Docker is not set up
- While Docker Desktop is open...
```
docker build -t [DOCKER USERNAME]/[IMAGE NAME] .
docker run -it -p 3000:3000 -v ${PWD}:/workspace [DOCKER USERNAME]/[IMAGE NAME]
```
This will build a docker using an image. Once the docker image is setup and running your prompt for your shell should now have a # to signal that you are in the workspace. 

- Now you will enter the folder that your project is held in and check the ruby and rails version.
```
cd portfolio_app
ruby --version (This is to check if you are up to date.)
rails --version (This is to check if you are up to date.)
```
Once you have a docker container built, you do not want to run the `run` command again to open it you want to use the next section.

## Entering a running container
When a Docker container is set up, you are able to use a couple of commands to enter into container again. As before you want to navigate your commandline into the folder were your container was made then the following commands will list active containers, Restart a targeted conatiner, and connect into a container.
- List
```
docker ps -a
```
- Restart
```
docker restart [CONTAINER-ID]
```
- Connect
```
docker exec -it [CONTAINER-ID] bash
```
This will allow you to list, restart and re-enter a docker container. If you don't know what the [CONTAINER-ID] is you will be able to see it in Docker Desktop.

CONTAINER ID silly_pascal
LAP CONTAINER ID stupefied_tesla