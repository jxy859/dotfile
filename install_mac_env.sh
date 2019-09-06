#!/bin/sh
#================================================================
#   Copyright (C) 2018 FreeWheel
#   Filename: install_mac_env.sh
#   Author: Xinyang Jiang <Email:jxy859@gmail.com | Work-Email xyjiang@freewheel.tv>
#   Create: 2018-11-30
#   Update: 2019-05-31 11:52:33
#   Desc: 
#================================================================

workdir=$(pwd)

for i in .ssh .vim .zshrc .vimrc .tmux.conf vimwiki
do
   ln -s ${workdir}/${i} ~/$i
done


#install home brew
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#install zsh
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#chsh -s /bin/zsh
