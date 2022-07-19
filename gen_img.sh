#!/bin/bash

docker build -t bioarchlinux:$(date "+%Y%m%d") .
docker run -d bioarchlinux:$(date "+%Y%m%d")
docker export $(docker ps -a | awk '{print $1}' |sed -n '2p') > bioarchlinux-$(date "+%Y%m%d").tar

docker rm $(docker ps -aq)
docker rmi $(docker images -q)
