#!/bin/bash

function read_yes_no()
{
    printf "[Y/N]: "
    read yesno
    while [[ "${yesno}" != "Y" && "${yesno}" != "N" ]]
    do
        printf "Please enter [Y/N]: "
        read yesno
    done
    if [[ "${yesno}" == "Y" ]]; then
        return 0
    fi
    return 1
}

function check_vim_executable()
{
    printf "Checking vim ... "
    if which vim >/dev/null 2>&1; then
        echo "OK"
        return 0
    fi
    echo "ERR"
    return 1
}

function install_vimrc()
{
    vimrc=.vimrc
    new_vimrc=`pwd`/${vimrc}
    
    if [ -L ${HOME}/${vimrc} ]; then
        link=`readlink ${HOME}/${vimrc}`

        if [[ "${link}" == "${new_vimrc}" ]]; then
            return 0
        fi

        printf "Relink your vim config? "
        if read_yes_no ; then
            echo "Relink your vim config to ${new_vimrc}"
            ln -f -s ${new_vimrc} ${HOME}/${vimrc}
            return $?
        fi
        
    elif [ -f ${HOME}/{vimrc} ]; then
        printf "You already have vim config file, relace it? "
        if read_yes_no ; then
            echo "Backup your tmux config to ${HOME}/vimrc.bak"
            mv ${HOME}/${vimrc} ${HOME}/vimrc.bak && ln -s ${new_vimrc} ${HOME}/${vimrc}
            return $?
        fi        
    fi
    return 1
}


function main()
{
    if ! check_vim_executable ; then
        echo
        echo "Can not fin vim executable"
        echo "Please install vim at first"
        echo
        exit 1
    fi

    if install_vimrc ; then
        echo
        echo "Install vim config success"
        echo
        exit 0
    fi

    echo
    echo "Install vim config failed"
    echo
    exit 1
}

main
