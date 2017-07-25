""""""""""""""""""""
" VIM SOURCE FILE  "
" By Xinyang Jiang "
"                  "
""""""""""""""""""""
syntax on
set number
set cursorline
set hlsearch
set backspace=2
set ruler
set showmode
set wrap
set shiftwidth=4
set softtabstop=4
set tabstop=4
set autochdir
set smartindent
set hlsearch
set incsearch
set ignorecase smartcase
set hidden
colorscheme desert
set fileformat=unix
set fileencoding=utf8
set encoding=utf8
set fileencodings=utf8-bom,utf8,gbk,gb2312,big5,hz
set cmdheight=1
set laststatus=2
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
set mouse=a

let g:mapleader="\<Space>"

""""Smart fold
set foldmethod=indent 
"set foldmethod=syntax
set foldcolumn=0
setlocal foldlevel=3
nnoremap , @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
noremap <C-d> :sh<CR>

set tags=./tags,./TAGS,tags;~,TAGS;~

execute pathogen#infect()

""""coop with clipboard in windows
vmap +y :w !pbcopy<CR><CR> 
nmap +p :r !pbpaste<CR><CR>

""""HTML
"autocmd FileType html map <F12> <ESC>0i<!--<ESC>$a--><ESC>
"autocmd FileType html map <F10> <ESC>04x$hh3x<ESC>
"


""""Golang
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
call plug#end()

"""""" with vim-go Plug
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
autocmd FileType go nmap <buffer> <leader>b <Plug>(go-build)
autocmd FileType go nmap <buffer> <leader>r <Plug>(go-run)
autocmd FileType go nmap <buffer> <leader>t <Plug>(go-test)
autocmd FileType go nmap <buffer> <leader>c <Plug>(go-test)

"""" JavaScript with vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

"""" automatically save content when you change the buffer 
set autowrite

"""" filetype
filetype indent on
filetype on
filetype plugin on

""""set NERDTree
map <F5> :NERDTreeMirror<CR>
map <F5> :NERDTreeToggle<CR>

""""set linenumber 
map <F3> :set nonu<CR>
map <F2> :set nu<CR>

""""set 

""""set NERDcommenter
" Add spaces after comment delimiters by default
" let g:NERDSpaceDelims = 1
"
" " Use compact syntax for prettified multi-line comments
" let g:NERDCompactSexyComs = 1
"
" " Align line-wise comment delimiters flush left instead of following code indentation
" let g:NERDDefaultAlign = 'left'
"
" " Set a language to use its alternate delimiters by default
" let g:NERDAltDelims_java = 1
"
" " Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
"
" " Allow commenting and inverting empty lines (useful when commenting a region)
" let g:NERDCommentEmptyLines = 1
"
" " Enable trimming of trailing whitespace when uncommenting
" let g:NERDTrimTrailingWhitespace = 1
