#!/bin/bash

set -e

if [[ "$(git tag --contains HEAD)" != "" ]]; then
  TAG=$(git describe)
  ./create-archive.sh
  ./deploy-github.sh $TAG
fi