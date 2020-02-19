#!/bin/bash

SCRIPT_DIR=$(dirname $(readlink -f $0))
INITIAL_DIR=`pwd`

cd $SCRIPT_DIR
git submodule init
git submodule update

cd ~
ln --backup -s $SCRIPT_DIR/.bashrc ~/.bashrc
ln --backup -s $SCRIPT_DIR/.profile ~/.profile
ln --backup -s $SCRIPT_DIR/.tmux.conf ~/.tmux.conf
mkdir -p ~/.config/Code/User/
ln --backup -s $SCRIPT_DIR/.config/Code/User/settings.json ~/.config/Code/User/settings.json

mkdir ~/bin -p
ln --backup -sn $SCRIPT_DIR/bin/scripts ~/bin/scripts
