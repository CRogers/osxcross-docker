#!/bin/sh

if [[ -n "$JOBS" ]]; then
  JOBS=$(nproc || echo 2)
fi

docker build -t osxcross-docker docker-build
docker run -e "JOBS=$JOBS" -e "UNATTENDED=1" -v "$(pwd)/out:/osxcross/target" osxcross-docker /osxcross/build.sh