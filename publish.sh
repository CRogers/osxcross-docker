#!/bin/bash

set -e

TAGS="$(git tag --contains HEAD)"
echo "Tags: $TAGS"

if [[ -z "$TAGS" ]]; then
  echo Skipping release, no tags
else
  TAG=$(git describe --tags)
  echo Releasing as $TAG
  ./deploy-github.sh $TAG
fi