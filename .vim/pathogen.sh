#installation 
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#runtime path manipulation
cd ~/.vim/bundle


git clone https://github.com/scrooloose/nerdcommenter.git
git clone git://github.com/scrooloose/nerdtree.git

## Golang
git clone https://github.com/fatih/vim-go.git #~/.vim/bundle/vim-go

## markdown
git clone https://github.com/suan/vim-instant-markdown.git
git clone https://github.com/plasticboy/vim-markdown.git

git clone https://github.com/vimwiki/vimwiki.git

## javascript
git clone https://github.com/pangloss/vim-javascript.git

