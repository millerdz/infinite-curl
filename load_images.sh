#!/bin/bash

echo "Loading curlloop-alpine-3.6.tar.gz"
docker load --input curlloop-alpine-3.6.tar.gz
echo "Loading curlloop-centos-7.tar.gz"
docker load --input curlloop-centos-7.tar.gz
echo "Loading curlloop-ubuntu-18.04.tar.gz"
docker load --input curlloop-ubuntu-18.04.tar.gz