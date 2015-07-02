#!/bin/bash
#
# Get latest language spec and associated scripts.

cd DLS/current

for f in *; do
    echo "Getting $f";
    curl -O https://raw.githubusercontent.com/dart-lang/sdk/master/docs/language/$f
    echo;
done
