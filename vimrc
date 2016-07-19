

" Packages and package settings
set rtp+=~/.vim/bundle/Vundle.vim
set nocompatible
filetype off   
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
call vundle#end()

" Completer options
noremap gd :YcmCompleter GoTo<CR>
let g:ycm_confirm_extra_conf=0

" Filetype handling
au BufNew,BufRead *.ll setf lex
au BufRead,BufNewFile *.c2 set filetype=c2
au BufRead,BufNewFile *.frag set filetype=glsl
au BufRead,BufNewFile *.geom set filetype=glsl
au BufRead,BufNewFile *.glsl set filetype=glsl
au BufRead,BufNewFile *.go set filetype=go 
au BufRead,BufNewFile *.vert set filetype=glsl

" Fix lua comment formatting
au BufRead,BufNewFile *.lua setlocal cms=--%s com=s:--[[,m:\ ,e:]],:--

" Templates for various filetypes
au BufNewFile *.cfg 0r ~/.vim/templates/cpp | $
au BufNewFile *.cpp 0r ~/.vim/templates/cpp | $
au BufNewFile *.h 0r ~/.vim/templates/cpp | $
au BufNewFile *.hpp 0r ~/.vim/templtes/cpp | $
au BufNewFile *.lua 0r ~/.vim/templates/lua | $
au BufNewFile *.py 0r ~/.vim/templates/.py | $

" Set custom tabstops for scripting languages
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType lua setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2

" Disable annoying bells
autocmd GUIEnter * set visualbell t_vb=
let g:netrw_silent = 1
set noerrorbells
set noerrorbells visualbell t_vb=

" Syntax highlighting
syntax on
colors github
set bg=light

" Chrome options
set guioptions-=m
set guioptions-=r
set guioptions-=T
set nowrap
set number
set ruler
set t_Co=256

" Tab formatting options
filetype plugin indent on
set expandtab
set tabstop=4

