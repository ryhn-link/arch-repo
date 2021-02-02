#!/bin/bash

cd pkgbuild

for f in *
do
    echo "Building $f..."
    cd "$f"
    ../../bin/buildpkg.sh
    cd ..
done