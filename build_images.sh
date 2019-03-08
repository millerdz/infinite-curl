#!/bin/bash
export DOCKER_BUILDKIT=1
docker image build -t curlloop:alpine-3.9 -f ./alpine.Dockerfile .
docker image build -t curlloop:centos-7 -f ./centos.Dockerfile .
docker image build -t curlloop:ubuntu-18.04 -f ./ubuntu.Dockerfile .