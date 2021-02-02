#!/bin/bash
updpkgsums
makepkg

PKG=$(ls | grep $(basename "$PWD")-*.pkg.*)

repo-add ../../pkg/x86_64/ryhn.db.tar.gz "$PKG"
mv "$PKG" "../../pkg/x86_64/"