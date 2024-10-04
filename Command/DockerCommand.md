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
 
 docker run -p 8080:8080 -p 6000:6000 jenkins 

 docker stop 2c5
 
 docker rmi <image_name>

 docker system prune  //very useful

 docker purne // automatically removes the resources not associated with a container.

 docker stats  // docker statitic

 docker inspect 

 docker run -it app

 docker run -it --name=contianer_name app


 winpty docker run -ti alpine  

  winpty docker exec -it pmamp-mysql-1 bash  // container bash

 ## docker compose
 
docker-compose build

docker-compose up -d

docker ps


docker exec -it <containerID> bash // in a bash 

docker inspect jenkins   //images description 

docker top ContainerID 

docker ps -a

docker kill ContainerID

docker volume ls
 
docker volume create jenkins_vol

docker run -d -v jenkins_vol:/var/jenkins_home --restart=on-failure -p 8080:8080 jenkins/jenkins



docker add --help	


docker image inspect imageName //all information about image 

docker tag old_image_name new-image_name


docker run --name nodeApp1 -p 8080:3000 nodeapp1 //container name run

docker run --rm --name nodeApp1 -p 8080:3000 nodeapp1  //remove containeer when stop the docker

docker run --rm --name nodeApp1 -dp 8080:3000 nodeapp1 //deattached the images

#search images 

docker search image_name

===================Docker compose==================

docker-composer up -d <service_name>

docker-compose run --rm composer create-project --prefer-dist laravel/laravel ##laravel project creation