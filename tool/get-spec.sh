#!/bin/bash
#
# Get earlier releases from googlecode.

cd DLS/current

for f in *; do
    echo "Getting $f";
    curl -O https://raw.githubusercontent.com/dart-lang/sdk/master/docs/language/$f
    echo;
done
