" Fix RTP for Windows 
set rtp+=~/.vim

" Set up Lua
luafile ~/.vim/scripts/init.lua

" Packages and package settings
set rtp+=~/.vim/bundle/Vundle.vim
set nocompatible
filetype off   
call vundle#begin()
Plugin 'vim-ruby/vim-ruby'
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/kien/ctrlp.vim.git'
call vundle#end()

" Completer options
noremap gd :YcmCompleter GoTo<CR>
let g:ycm_confirm_extra_conf=0

" Filetype handling
au BufRead,BufNewFile *.ll setf lex
au BufRead,BufNewFile *.c2 set filetype=c2
au BufRead,BufNewFile *.frag set filetype=glsl
au BufRead,BufNewFile *.geom set filetype=glsl
au BufRead,BufNewFile *.glsl set filetype=glsl
au BufRead,BufNewFile *.go set filetype=go 
au BufRead,BufNewFile *.vert set filetype=glsl
au BufRead,BufNewFile *.c2 setf c2

"au BufNew,BufRead *.glsl setf glsl330
"au BufNew,BufRead *.vert setf glsl330
"au BufNew,BufRead *.frag setf glsl330
"au BufNew,BufRead *.geom setf glsl330

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
au BufNewFile *.jg lua skeleton('jg')

" Set custom tabstops for scripting languages
au FileType css setlocal shiftwidth=2 tabstop=2
au FileType erb setlocal shiftwidth=2 tabstop=2
au FileType html setlocal shiftwidth=2 tabstop=2
au FileType js setlocal shiftwidth=2 tabstop=2
au FileType jsx setlocal shiftwidth=2 tabstop=2
au FileType lua setlocal shiftwidth=2 tabstop=2
au FileType ruby set shiftwidth=2 tabstop=2 softtabstop=2

" Disable annoying bells
au GUIEnter * set visualbell t_vb=
let g:netrw_silent = 1
set noerrorbells
set noerrorbells visualbell t_vb=

" Syntax highlighting
syntax on
colors github
set background=light

" Chrome options
set backspace=2
set encoding=utf-8
set expandtab
set fileencoding=utf-8
set guioptions=
set nobomb
set noerrorbells
set novisualbell
set nowrap
set number
set ruler
set tabstop=4
set softtabstop=4
set shiftwidth=4
if has("win32")
    set guifont=consolas:h10:cDEFAULT
endif

" Code folding
"set foldmethod=syntax
"set foldnestmax=1
"set foldlevel=0
"set foldenable

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
