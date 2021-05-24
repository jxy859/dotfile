
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

map <C-c> :sh<CR>
"map <C-s> :w <CR> :echo "Saved" <CR>

set tags=./tags,./TAGS,tags;~,TAGS;~

execute pathogen#infect()

""""coop with clipboard in windows
vmap +y :w !pbcopy<CR><CR> 
nmap +p :r !pbpaste<CR><CR>

""""HTML
"autocmd FileType html map <F12> <ESC>0i<!--<ESC>$a--><ESC>
"autocmd FileType html map <F10> <ESC>04x$hh3x<ESC>
"

"$MYVIMRC autoload .vimrc
autocmd! bufwritepost ~/.vimrc source %

""""Golang
call plug#begin()
Plug 'fatih/vim-go' , { 'do': ':GoInstallBinaries' }
Plug 'fatih/molokai'
call plug#end()

" color go
let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai

"""""" with vim-go Plug
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>c :cclose<CR>
autocmd FileType go nmap <buffer> <leader>b <Plug>(go-build)
autocmd FileType go nmap <buffer> <leader>r <Plug>(go-run)
autocmd FileType go nmap <buffer> <leader>t <Plug>(go-test)
autocmd FileType go nmap <buffer> <leader>f :GoFmt<CR> 
autocmd FileType go nmap <buffer> <leader>a :GoAlternate<CR> 
autocmd FileType go nmap <buffer> <leader>i :GoImports<CR> 
"<Plug>(go-format)

"autocmd FileType go nmap <buffer> <leader>c <Plug>(go-test)
"""""""" env set in with vim-go
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_autodetect_gopath = 0
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

"autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 


autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

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
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""""set linenumber 
map <F3> :set nonu<CR>
map <F2> :set nu<CR>

""""set vim-tag
let g:vim_tags_auto_generate = 1

""""set NERDcommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
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
"

map <F6> :call CompileRunGcc()<CR>
func! CompileRunGcc()
        exec "w"
        if &filetype == 'c'
                exec "!g++ % -o %<"
                exec "!time ./%<"
        elseif &filetype == 'cpp'
                exec "!g++ % -o %<"
                exec "!time ./%<"
        elseif &filetype == 'java'
                exec "!javac %"
                exec "!time java %<"
        elseif &filetype == 'sh'
                :!time bash %
        elseif &filetype == 'python'
                exec "!clear"
                exec "!time python %"
        elseif &filetype == 'html'
                exec "!firefox % &"
        elseif &filetype == 'go'
                " exec "!go build %<"
                exec "!time go run %"
        elseif &filetype == 'mkd'
                exec "!~/.vim/markdown.pl % > %.html &"
                exec "!firefox %.html &"
        endif
endfunc

"""" airline
let g:airline_theme='deus'
set laststatus=2
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1 
"nnoremap <leader>n :bn<CR>
"nnoremap <leader>p :bp<CR>

"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#buffer_nr_show = 1

if !exists('g:airline_symbols')
	  let g:airline_symbols = {}
  endif
"let g:airline_symbols.space = "\ua0"
"
"

"""" easymotion
"Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map f <Plug>(easymotion-prefix)
map ff <Plug>(easymotion-s)
map fs <Plug>(easymotion-f)

" Move to word
map  fw <Plug>(easymotion-bd-w)
nmap fw <Plug>(easymotion-overwin-w)

map fh <Plug>(easymotion-linebackward)
map fj <Plug>(easymotion-j)
map fk <Plug>(easymotion-k)
map fl <Plug>(easymotion-lineforward)
" 重复上一次操作, 类似repeat插件, 很强大
map f. <Plug>(easymotion-repeat)


"""" tagbar
nmap <F8> :TagbarToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


autocmd BufNewFile *.[ch],*.hpp,*.cpp,Makefile,*.mk,*.sh,*.go,*.js,*.java exec ":call SetTitle()" |normal 11Go

func SetComment() " comment with /**/ //
	call setline(1,"/*================================================================") 
	call append(line("."),   "#   Copyright (C) ".strftime("%Y")." FreeWheel")
	call append(line(".")+1, "#   ") 
	call append(line(".")+2, "#   Filename: ".expand("%:t")) 
	call append(line(".")+3, "#   Author: xyjiang <Email:jxy859@gmail.com | Work-Email xyjiang@freewheel.com|xyjiang@blockgraph.co>")
	call append(line(".")+4, "#   Create: ".strftime("%Y-%m-%d")) 
	call append(line(".")+5, "#   Update: ".strftime("%Y-%m-%d %H:%M:%S"))
	call append(line(".")+6, "#   Desc: ") 
	call append(line(".")+7, "================================================================*/") 
	call append(line(".")+8, "")
	call append(line(".")+9, "")
endfunc

func SetComment_sh()
	call append(line(".")+0, "#================================================================") 
	call append(line(".")+1, "#   Copyright (C) ".strftime("%Y")." FreeWheel")
	call append(line(".")+2, "#   Filename: ".expand("%:t")) 
	call append(line(".")+3, "#   Author: Xinyang Jiang <Email:jxy859@gmail.com | Work-Email xyjiang@freewheel.com|xyjiang@blockgraph.co>")
	call append(line(".")+4, "#   Create: ".strftime("%Y-%m-%d")) 
	call append(line(".")+5, "#   Update: ".strftime("%Y-%m-%d %H:%M:%S"))
	call append(line(".")+6, "#   Desc: ") 
	call append(line(".")+7, "#================================================================") 
	call append(line(".")+8, "")
endfunc

func SetTitle()

	if &filetype == 'make' 
		call setline(1,"") 
		call setline(2,"")
		call SetComment_sh()

	elseif &filetype == 'sh' 
		call setline(1,"#!/usr/bin/env bash") 
		call setline(2,"")
		call SetComment_sh()

	" elseif expand("%:e") == 'go'
		" exec |normal dd
		" call SetComment()
		" normal y

	else
		call SetComment()
		if expand("%:e") == 'hpp' 
			call append(line(".")+10, "#ifndef _".toupper(expand("%:t:r"))."_H") 
			call append(line(".")+11, "#define _".toupper(expand("%:t:r"))."_H") 
			call append(line(".")+12, "#ifdef __cplusplus") 
			call append(line(".")+13, "extern \"C\"") 
			call append(line(".")+14, "{") 
			call append(line(".")+15, "#endif") 
			call append(line(".")+16, "") 
			call append(line(".")+17, "#ifdef __cplusplus") 
			call append(line(".")+18, "}") 
			call append(line(".")+19, "#endif") 
			call append(line(".")+20, "#endif //".toupper(expand("%:t:r"))."_H") 

		elseif expand("%:e") == 'h' 
			call append(line(".")+10, "#pragma once") 

		elseif &filetype == 'c' 
			call append(line(".")+10,"#include \"".expand("%:t:r").".h\"") 

		elseif &filetype == 'cpp' 
			call append(line(".")+10, "#include \"".expand("%:t:r").".h\"") 

		endif

	endif
endfunc

"SET Last Modified Time START
func DataUpdate()
	call cursor(9,1)
	if search ('Update:') != 0
		let line = line('.')
		call setline(line, '#   Update: '.strftime("%Y-%m-%d %H:%M:%S"))
	endif
endfunc
autocmd FileWritePre,BufWritePre *.[ch],*.hpp,*.cpp,Makefile,*.mk,*.sh,*.go,*.js ks|call DataUpdate() |'s
"SET Last Modified Time END

"""groovy

if did_filetype() 
    finish 
endif 
if getline(1) =~ '^#!.*[/\\]groovy\>' 
    setf groovy 
endif 


"""avro
au BufRead,BufNewFile *.avdl setlocal filetype=avro-idl
au BufRead,BufNewFile *.avsc setlocal filetype=avro-idl

"""rainbow parentheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Open markdown files with Chrome.
autocmd BufEnter *.md exe 'noremap <F7> :!open -a "Google Chrome.app" %:p<CR>'



