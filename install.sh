#!/bin/bash

DIR=`pwd`
VIMRC=${DIR}/.vimrc

USER_VIMRC=$HOME/.vimrc

function install_vimrc()
{
    if [ -L ${USER_VIMRC} ]; then
	OLD_VIMRC_LINK=`readlink ~/.vimrc`
	if [ "${VIMRC}" = "${OLD_VIMRC_LINK}" ]; then
	    return
	fi
	echo "relink your vimrc to ${VIMRC}"
    elif [ -f ${USER_VIMRC} ]; then
	echo "backup your .vimrc to vimrc.bak in your home directory"
	mv ${USER_VIMRC} ${USER_VIMRC}.bak
    fi

    ln -s ${VIMRC} ${USER_VIMRC}
}


install_vimrc

echo "vim setting done"
