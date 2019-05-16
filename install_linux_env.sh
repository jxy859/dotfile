#!/bin/sh
#================================================================
#   Copyright (C) 2018 FreeWheel
#   Filename: install_mac_env.sh
#   Author: Xinyang Jiang <Email:jxy859@gmail.com | Work-Email xyjiang@freewheel.tv>
#   Create: 2018-11-30
#   Update: 2019-03-18 11:08:16
#   Desc: 
#================================================================

workdir=$(pwd)

for i in .ssh .vim .bash_profile .bashrc .zshrc .vimrc tmux.linux vimwiki
do
   ln -s ${workdir}/${i} ~/$i
done

sh ~/.vim/pathogen.sh

#install home brew
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
