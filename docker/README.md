# Docker

For this challenge, I used an image from nginx as it is a light, fast and scalable web server, containing many configuration possibilities.

For orchestration scalability of this application, decide to create a  **swarm cluster**  to provide high availability and ease of management.

## Dockerfile

The Dockerfile is very simple, containing only the reference of the nginx image and the copy of the modified html into the container.

There is already an image of the challenge on the dockerhub. 
To download run this command:
```
docker pull marcelofreire88/challenge:latest
```
To deploy the application in one container only, it is necessary to use the following command:
```
docker run -d -p 80:80 marcelofreire88 /challenge
```



## Steps for build a local image

### Step 1:
To build the application it is necessary to use the command inside the docker directory:
```
docker build -t challenge .
```
### Step 2: 
To run your customized image run:
```
docker run -d -p 80:80 challenge
```

## Steps to start the swarm docker
### Step 1:
```
docker swarm init
```

### Step 2:
To deploy as a service, run:
```
docker stack deploy -c stack.yml challenge
```

### Step3:
to check if the services are running, run:
```
docker service ls 
```

## Show-me the code!

### Youtube video

[![](http://img.youtube.com/vi/yO5Gpgm8-eo/0.jpg)](http://www.youtube.com/watch?v=yO5Gpgm8-eo "Docker application")
