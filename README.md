# inception
Docker? I barely know her


TODO
- [ ] Run system in VM.
- [ ] Set VM's hostname to `jboeve.42.fr`.
- [ ] Set nginx's exposed port to 443:443.
- [ ] Induce a crash and verify that the containers restart.
- [ ] Check out `In your WordPress database, there must be two users, one of them being the administrator. The administrator’s username can’t contain admin/Admin or administrator/Administrator (e.g., admin, administrator, Administrator, admin-123, and
so forth).`


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
- Docker-compose down, //destroy all your ressources
- docker-compose rm,  // delete containers
- docker-compose config, //check the syntax of you docker-compose file
```


## Docker file instructions
`RUN` Runs when we build the image
`CMD` Runs when we start the container
