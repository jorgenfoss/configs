#!/bin/bash

cd ${HOME}/configs

# Backup old config files
[ -f ${HOME}/.vimrc ] && mv ${HOME}/.vimrc ${HOME}/configs/.vimrc_old
[ -f ${HOME}/.bashrc ] && mv ${HOME}/.bashrc ${HOME}/configs/.bashrc_old
[ -f ${HOME}/.dircolors ] && mv ${HOME}/.dircolors ${HOME}/configs/.dircolors_old
[ -f ${HOME}/.tmux.conf ] && mv ${HOME}/.bashrc ${HOME}/configs/.tmux.conf_old

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
if [ ! -L ${HOME}/.tmux.conf ]; then 
    ln -s ${HOME}/configs/.tmux.conf ${HOME}/.tmux.conf 
fi

echo "Done"
echo
