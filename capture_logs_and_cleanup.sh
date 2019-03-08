#!/bin/bash

echo "Pausing all curlloop running containers.."
docker container pause $(docker container ps -q --filter "name=loop" --format "{{.Names}}")

echo "Capturing all logs from paused curlloop containers..."
for h in $(docker container ps -q --filter "name=curlloop" --format "{{.Names}}"); 
do 
    echo "\tCapturings logs in docker-$h.logs"
    docker container logs $h >> docker-$h.logs
done

echo "Removing Stack..."
docker stack rm curlloop

echo "All done. Go check out those .logs files for any not-200 HTTP status codes. Have a nice day!"