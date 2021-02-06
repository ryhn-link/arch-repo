#!/bin/bash

if [ $USER = root ]
then
    echo '

[ryhn]
Server = https://arch.ryhn.link/pkg/$arch' >> /etc/pacman.conf

    echo
    echo "Added [ryhn] to repo list"
    echo "Importing GPG Keys"
    echo

    gpg --recv-keys 3BC1065444B0109A
    pacman-key --lsign-key 3BC1065444B0109A

    echo
    echo "Synchronizing repositories"
    echo

    pacman -Sy

    echo
    echo "Done! Have a nice day!"
    echo

else
    echo "Ussage: sudo $0 "
fi