#!/bin/sh

#docker image prune -a -f
docker build --platform=linux/arm64 -f Dockerfile-transmission-minimal-arm64-alpine -t transmission-minimal:latest .
