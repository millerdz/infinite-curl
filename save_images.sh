#!/bin/bash
echo "Saving image curlloop:alpine-3.9 > curlloop:alpine-3.9.tar"
docker save curlloop:alpine-3.9 > curlloop-alpine-3.9.tar
echo "Saving image curlloop:centos-7 > curlloop-centos-7.tar"
docker save curlloop:centos-7 > curlloop-centos-7.tar
echo "Saving image curlloop:ubuntu-18.04 > curlloop-ubuntu-18.04.tar"
docker save curlloop:ubuntu-18.04 > curlloop-ubuntu-18.04.tar