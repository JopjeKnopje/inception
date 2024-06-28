# inception
## NOTES
This setup was running in `pop-os_22.04_LTS non nvdia`


## Docker versions




Docker version:
```
Client: Docker Engine - Community
 Version:           26.1.4
 API version:       1.45
 Go version:        go1.21.11
 Git commit:        5650f9b
 Built:             Wed Jun  5 11:29:22 2024
 OS/Arch:           linux/amd64
 Context:           default

Server: Docker Engine - Community
 Engine:
  Version:          26.1.4
  API version:      1.45 (minimum version 1.24)
  Go version:       go1.21.11
  Git commit:       de5c9cf
  Built:            Wed Jun  5 11:29:22 2024
  OS/Arch:          linux/amd64
  Experimental:     false
 containerd:
  Version:          1.6.33
  GitCommit:        d2d58213f83a351ca8f528a95fbd145f5654e957
 runc:
  Version:          1.1.12
  GitCommit:        v1.1.12-0-g51d5e94
 docker-init:
  Version:          0.19.0
  GitCommit:        de40ad0
```

Docker compose version: ```Docker Compose version v2.27.1```



## Running

```
// show all running docker containers
docker ps

// show logs 
docker {name}

// run the container
docker run {name}

// run the container in background
docker run -p {name}


// run image and translate their port `7000` to our `80`
docker run -d -p 7000:80 test:latest

//delete the image, if the image is running you need to kill it first.
docker image rm -f "image name/id"

//stop a running image,
docker image kill "name"


// dirty hack for removing local volume
docker run -it -v ~/data:/volumedata  --rm debian:latest bash

```





### Notes

To manually build docker container CD into its directory (for example `cd src/requiredments/nginx`)


and run `docker build -t nginx .`


Starting nginx container
`docker run --name nginx -p 9001:443 nginx`


### Docker compose
```
- docker-compose up -d --build, //Create and build all the containers and they still run in the background
- docker-compose ps, //Check the status for all the containers
- docker-compose logs -f --tail 5, //see the first 5 lines of the logs of your containers
- docker-compose stop , //stop a stack of your docker compose
- docker-compose down, //destroy all your resources
- docker-compose rm,  // delete containers
- docker-compose config, //check the syntax of you docker-compose file
```


## Docker file instructions
`RUN` Runs when we build the image
`CMD` Runs when we start the container
