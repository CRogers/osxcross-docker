#!/bin/bash

if [[ -z "$JOBS" ]]; then
  JOBS=$(nproc || echo 2)
fi

docker build -t osxcross-docker docker-build
docker run -it -e "JOBS=$JOBS" -v "$(pwd)/out:/osxcross/target" osxcross-docker /osxcross/build-everything.sh \
  | tee build-log.log