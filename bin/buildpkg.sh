#!/bin/bash

source PKGBUILD
source /etc/makepkg.conf

for a in ${arch[@]}
do
    if [ $a != "x86_64" ] || [ $a == "any" ]
    then
        echo "Building for $a not supported, skipping"
        break
    fi

    echo "Building '$pkgname' v$pkgver-$pkgrel for $a"

    updpkgsums
    makepkg -s --sign -f

    PKG=$(ls $pkgname-$pkgver-$pkgrel-$a$PKGEXT)

    echo
    echo $PKG
    echo
    
    mkdir -p ../../pkg/$a
    repo-add ../../pkg/$a/ryhn.db.tar.gz "$PKG"
    mv "$PKG" "../../pkg/$a/"
    # What the hell is the .sig file, do I need it?
    # mv "$PKG.sig" "../../pkg/$a/"
done