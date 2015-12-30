#!/bin/bash

set -eu

echo "Archiving distribution output"
tar c -C out . | xz -zf - >osxcross-dist.tar.xz