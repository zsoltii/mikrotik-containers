#!/bin/sh

# Run the transmission-minimal Docker container for linux/arm64 platform

docker run --rm -it --platform=linux/arm64 \
  -p 9091:9091 \
  -p 51413:51413 \
  -p 51413:51413/udp \
  -v $(pwd)/downloads:/downloads \
  transmission-minimal:latest
