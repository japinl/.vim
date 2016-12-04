#!/bin/bash

if [ -f ~/.vimrc ]; then
    echo "Backup your .vimrc to vimrc.bak"
    mv ~/.vimrc ~/vimrc.bak
fi

cp .vimrc ~/

echo "Done"
