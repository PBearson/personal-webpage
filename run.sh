#!/bin/bash

IMAGE_NAME="bpearson-website"
TAG="1.0"
CONTAINER_NAME="bpearson-website-instance"
PORT=8080

docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME
docker build -t $IMAGE_NAME:$TAG .
docker run -d -p $PORT:8080 --name $CONTAINER_NAME --restart always $IMAGE_NAME:$TAG
docker rmi $(docker images -f "dangling=true" -q)
