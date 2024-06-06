# inception
Docker? I barely know her


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
