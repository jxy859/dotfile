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

## vim-tags
git clone https://github.com/szw/vim-tags.git

## ctrip
git clone https://github.com/ctrlpvim/ctrlp.vim.git

## protobuf
git clone git://github.com/uarun/vim-protobuf.git

## airline
git clone https://github.com/vim-airline/vim-airline.git

git clone https://github.com/vim-airline/vim-airline-themes

git clone https://github.com/majutsushi/tagbar.git
