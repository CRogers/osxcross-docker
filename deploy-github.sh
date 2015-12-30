#!/bin/bash

set -eu

RELEASE_NAME=$1

GITHUB_RELEASE_TARBALL=linux-amd64-github-release.tar.bz2

wget https://github.com/aktau/github-release/releases/download/v0.6.2/$GITHUB_RELEASE_TARBALL
tar xjf $GITHUB_RELEASE_TARBALL
rm $GITHUB_RELEASE_TARBALL
mv bin/linux/amd64/github-release bin/
chmod +x bin/github-release

./bin/github-release release -t $RELEASE_NAME
./bin/github-release upload -t $RELEASE_NAME -n "osxcross-$RELEASE_NAME.tar.xz" -f dist/osxcross-dist.tar.xz