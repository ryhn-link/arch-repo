#!/bin/bash

if [ $EUID = 0 ]
then
    echo '

[ryhn]
SigLevel = Optional TrustedOnly
Server = https://arch.ryhn.link/pkg/' >> /etc/pacman.conf

    echo
    echo "Added [ryhn] to repo list"
    echo


    echo
    echo "Synchronizing repositories"
    echo

    pacman -Sy

    echo
    echo "Installing keyring"
    echo

    pacman -S ryhn-keyring

    echo
    echo "Done! Have a nice day!"
    echo

else
    echo "Ussage: sudo $0 "
fi