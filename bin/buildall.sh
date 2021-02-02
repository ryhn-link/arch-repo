#!/bin/bash

cd pkgbuild

foreach f ( * )
    echo "Building $f..."
    cd "$f"
    ../../buildpkg.sh
    cd ..
end