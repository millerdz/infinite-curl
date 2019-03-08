#!/bin/bash
echo "Saving image curlloop:alpine-3.9 > curlloop:alpine-3.9.tar.gz"
docker save curlloop:alpine-3.9 | gzip > curlloop-alpine-3.9.tar.gz 2>> error.log
echo "Saving image curlloop:centos-7 > curlloop-centos-7.tar.gz"
docker save curlloop:centos-7| gzip > curlloop-centos-7.tar.gz 2>> error.log
echo "Saving image curlloop:ubuntu-18.04 > curlloop-ubuntu-18.04.tar.gz"
docker save curlloop:ubuntu-18.04 | gzip > curlloop-ubuntu-18.04.tar.gz 2>> error.log