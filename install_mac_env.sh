#!/bin/sh
#================================================================
#   Copyright (C) 2018 FreeWheel
#   Filename: install_mac_env.sh
#   Author: Xinyang Jiang <Email:jxy859@gmail.com | Work-Email xyjiang@freewheel.tv>
#   Create: 2018-11-30
#   Update: 2021-05-24 11:38:31
#   Desc: 
#================================================================

workdir=$(pwd)
echo install home brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s /bin/zsh
brew install tmux
brew install toilet fortune cowsay

for i in .ssh .vim .zshrc .vimrc .tmux.conf vimwiki
do
   ln -s ${workdir}/${i} ~/$i
done
