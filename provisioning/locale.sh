#!/bin/bash

VAGRANT_USER=vagrant
SHELLFILE=/home/$VAGRANT_USER/.shell
BASHRC=/home/$VAGRANT_USER/.bashrc

sudo locale-gen "en_US.UTF-8"
sudo dpkg-reconfigure locales

cat <<EOF > $SHELLFILE
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
EOF

if ! grep -Fq $SHELLFILE $BASHRC ; then
	echo "source $SHELLFILE" >> $BASHRC
fi
source $BASHRC