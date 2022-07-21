#!/bin/bash

docker run -d bioarchlinux/bioarchlinux
docker export $(docker ps -a | awk '{print $1}' |sed -n '2p') > bioarchlinux-$(date "+%Y%m%d").tar

docker rm $(docker ps -aq)
docker rmi $(docker images -q)
