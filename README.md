# infinite-curl

A Docker container that infinitely curls a specified URL and reports the HTTP status code response to STDOUT.

```
$ docker run --rm derrickdocker/curlloop:alpine-3.9 http://www.example.org
ms=10; count=1; result=200
ms=3130; count=2; result=200
ms=6170; count=3; result=200
...
```

## How to use

Get the bits:
* Clone or download this repo
* Or, grab the artifacts from a [tagged release](https://github.com/millerdz/infinite-curl/releases/)

### Pull the images

If you have internet access, pull the desired image(s) from Docker Hub:

```
docker pull derrickdocker/curlloop:alpine-3.9
docker pull derrickdocker/curlloop:centos-7
docker pull derrickdocker/curlloop:ubuntu-18.04
```

### Build the images

Provided you have internet access and you want to/need to modify any scripts or images, then you can build the images in bulk using the provided `build_images.sh`.

### Load the images

If you do not have internet access, you can download the image TAR files [here](https://github.com/millerdz/infinite-curl/releases/) and then load them in bulk onto your environment using the provided `load_images.sh`.

### Non-Swarm deployment

1. Provided you have either built or loaded the images, run the images individually. An example:
```docker run --rm curlloop:alpine-3.9 http://www.example.org```
1. Observe the output. Happy hunting! 

### On a Docker Swarm

**NOTE**: This assumes you have already initialized a [Docker Swarm](https://docs.docker.com/engine/swarm/).

1. Modify the `docker-compose.yml` for the type of [image](https://docs.docker.com/glossary/?term=image) you want to use, whether that is Alpine, CentOS, or Ubuntu, and the number of replicas you need
1. Modify the `docker-compose.yml` for URL you want to `curl`
1. Deploy the [Stack](https://docs.docker.com/engine/swarm/stack-deploy/):
```$ docker stack deploy curlloop -c ./docker-compose.yml```
1. Wait an arbitrary amount of time. This could be 6 seconds, a minute, or more.
1. Capture the logs and then cleanup:
```$ capture_logs_and_cleanup.sh```
1. Look at the resulting `docker-<ID>.logs files for non-200 HTTP status codes. Happy hunting!

## Output

Output consists of:
* ms - milliseconds since the container started
* count - the loop number (e.g. 1 is for first loop, 2 is for second loop)
* result - the HTTP status code

```
ms=10; count=1; result=200
ms=3130; count=2; result=200
ms=6170; count=3; result=200
```
