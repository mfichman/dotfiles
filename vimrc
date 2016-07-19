
" Set up Lua
luafile ~/.vim/scripts/init.lua

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
au BufNewFile *.c lua skeleton('c')
au BufNewFile *.cfg lua skeleton('cfg')
au BufNewFile *.cpp lua skeleton('cpp')
au BufNewFile *.frag lua skeleton('glsl')
au BufNewFile *.geom lua skeleton('glsl')
au BufNewFile *.glsl lua skeleton('glsl')
au BufNewFile *.h lua skeleton('h')
au BufNewFile *.lua lua skeleton('lua')
au BufNewFile *.py lua skeleton('py')
au BufNewFile *.vert lua skeleton('glsl')

" Set custom tabstops for scripting languages
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType js setlocal shiftwidth=2 tabstop=2
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

" Key mappings
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <Up> <Nop>
