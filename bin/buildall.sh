#!/bin/bash

cd pkgbuild

for f in *
do
    echo "Building $f..."
    cd "$f"
    ../../buildpkg.sh
    cd ..
done