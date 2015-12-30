#!/bin/bash

if [[ -z "$JOBS" ]]; then
  JOBS=$(nproc || echo 2)
fi

docker build -t osxcross-docker docker-build
docker run -it -e "JOBS=$JOBS" -v "$(pwd)/dist:/osxcross/dist" osxcross-docker /osxcross/build-everything.sh