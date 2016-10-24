#!/bin/bash

cd ${HOME}/configs

# Backup old config files
[ -f ${HOME}/.vimrc ] && mv ${HOME}/.vimrc ${HOME}/configs/.vimrc_old
[ -f ${HOME}/.bashrc ] && mv ${HOME}/.bashrc ${HOME}/configs/.bashrc_old
[ -f ${HOME}/.dircolors ] && mv ${HOME}/.dircolors ${HOME}/configs/.dircolors_old

# Create links to new files
if [ ! -L ${HOME}/.vimrc ]; then 
    ln -s ${HOME}/configs/.vimrc ${HOME}/.vimrc 
fi
if [ ! -L ${HOME}/.bashrc ]; then 
    ln -s ${HOME}/configs/.bashrc ${HOME}/.bashrc 
fi
if [ ! -L ${HOME}/.dircolors ]; then 
    ln -s ${HOME}/configs/.dircolors ${HOME}/.dircolors 
fi

echo "Done"
echo
