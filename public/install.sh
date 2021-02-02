#!/bin/bash

if [ $USER = root ]
then
    echo '

[ryhn]
SigLevel = Never
Server = https://arch.ryhn.link/pkg/$arch' >> /etc/pacman.conf

    echo
    echo "Added [ryhn] to repo list"
    echo "Synchronizing repositories"
    echo

    pacman -Sy

    echo
    echo "Synchronized packages"
    echo

else
    echo "Ussage: sudo $0 "
fi