# What is a container?

A container is a sandboxed process running on a host machine that is isolated from all other processes running on that host machine.

# What is an image?

A running container uses an isolated filesystem. This isolated filesystem is provided by an image, and the image must contain everything needed to run an application - all dependencies, configurations, scripts, binaries, etc. The image also contains other configurations for the container, such as environment variables, a default command to run, and other metadata.


docker ps --all
docker logs 2c5 //usefull command for finding logs for container id.
docker container start --attach 2c5
docker stop 88c6415f8d26 // stop container
 

 docker build -t getting-started .

 docker run -dp 127.0.0.1:3000:3000 getting-started   // -d detach -p publish
 
 docker run -p 8080:8080 -p 50000:50000 jenkins 

 docker stop 2c5
 
 docker rmi <image_name>

 docker system prune  //very useful

 docker stats  // docker statitic

 docker inspect 

 docker run -it app

 docker run -it --name=contianer_name app


 winpty docker run -ti alpine

 ## docker compose
 
docker-compose build

docker-compose up -d

docker ps

docker inspect jenkins   //images description 