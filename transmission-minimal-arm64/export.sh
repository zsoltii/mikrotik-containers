#!/bin/sh

IMAGE_NAME=transmission-minimal:latest
EXPORT_FILE=transmission-minimal-arm64.tar
PLATFORM=linux/arm64

docker build --platform=$PLATFORM -f Dockerfile-transmission-minimal-arm64-alpine -t $IMAGE_NAME .
docker save $IMAGE_NAME -o $EXPORT_FILE

