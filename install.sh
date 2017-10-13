#!/bin/bash
#
# Copyright (C) 2017 Japin Li <japinli@hotmail.com>.
#

BASE_DIR=$(cd $(dirname $0); pwd -P)
VUNDLE_DIR=$BASE_DIR/bundle/Vundle.vim
[ ! -d $VUNDLE_DIR ] && mkdir -p $VUNDLE_DIR && \
    git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_DIR >/dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "clone vundle.vim failed"
    exit 1
fi

ln -sf $BASE_DIR/vimrc $HOME/.vimrc
vim +PluginInstall +qall
if [ $? -ne 0 ]; then
    echo "install plugin failed"
    exit 1
fi
