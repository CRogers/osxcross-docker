#!/bin/bash

set -e

if [[ "$(git tag --contains HEAD)" != "" ]]; then
  TAG=$(git describe --tags)
  ./deploy-github.sh $TAG
fi