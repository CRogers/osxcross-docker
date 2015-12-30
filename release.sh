#!/bin/bash

set -eu

RELEASE=$1

git commit --allow-empty -m "$RELEASE release"
git tag -a $RELEASE -m $RELEASE
git push origin master $RELEASE