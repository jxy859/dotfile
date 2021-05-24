#!/bin/sh
#================================================================
#   Copyright (C) 2018 FreeWheel
#   Filename: install_mac_env.sh
#   Author: Xinyang Jiang <Email:jxy859@gmail.com | Work-Email xyjiang@freewheel.tv>
#   Create: 2018-11-30
#   Update: 2021-05-23 22:20:45
#   Desc: 
#================================================================

workdir=$(pwd)

for i in .ssh .vim .zshrc .vimrc .tmux.conf vimwiki
do
   ln -s ${workdir}/${i} ~/$i
done


echo install home brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s /bin/zsh
brew install tmux
