#!/bin/sh
#================================================================
#   Copyright (C) 2018 FreeWheel
#   Filename: install_mac_env.sh
#   Author: Xinyang Jiang <Email:jxy859@gmail.com | Work-Email xyjiang@freewheel.tv>
#   Create: 2018-11-30
#   Update: 2018-12-03 11:02:09
#   Desc: 
#================================================================

workdir=$(pwd)

for i in .ssh .vim .zshrc .vimrc .tmux.conf 
do
   ln -s ${workdir}/${i} ~/$i
done

#install home brew
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
