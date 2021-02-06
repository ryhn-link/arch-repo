#!/bin/bash

cd pkgbuild

for f in *
do
    cd "$f"
    ../../bin/buildpkg.sh
    cd ..
done