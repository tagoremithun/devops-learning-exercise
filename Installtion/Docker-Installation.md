# Docker Installation

1. Docker Desktop from Docker official web site
2. Install it (if windows then add  Use WSL 2 instead of Hyper-V ) --follow on website
3. check docker is running or not.
4. create a new project with Dockerfile (no file extension)
5. Publish your project to DockerHub 
6. pull the code from DockerHub ( you can check play with docker)
7. Run the docker image

############################ Command ###############################

login to docker

docker login -u 789017709123452 -p Password docker.io

docker push  789017709123452/hello-world:hello-world

docker pull 789017709123452/hello-world:hello-world

docker run 789017709123452/hello-world

docker run -d -p 80:80 docker/getting-started

docker --help // for more command

docker ps   // process

docker image ls // list of images

docker volume create todo-db   // create volume

docker run -dp 127.0.0.1:3000:3000 --mount type=volume,src=todo-db,target=/etc/todos getting-started

docker volume inspect todo-db

docker compose up -d

docker exec -it <mysql-container-id> mysql -u root -p

docker exec container-id /usr/bin/mysqldump -u username database-name > dump.sql	

docker image history getting-started

docker run -it jenkins/jenkins bash

==================

docker init   // docker initialization

docker compose up --build

docker compose up --build -d  //run background