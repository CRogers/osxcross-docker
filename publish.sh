#!/bin/bash

set -e

if [[ -n "$(git tag --contains HEAD)" ]]; then
  echo Skipping release, no tags
else
  TAG=$(git describe --tags)
  echo Releasing as $TAG
  ./deploy-github.sh $TAG
fi