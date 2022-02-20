#!/bin/sh

# If a command fails then the deploy stops
set -e

hugo

cp -r public/* ../cdgrv.github.io

cd ../cdgrv.github.io && git commit -am new && git push
