" Fix RTP for Windows
set rtp+=~/.vim

" CTRL-P options
let g:ctrlp_follow_symlinks = 0
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" CSV options
let g:csv_no_conceal = 1
let g:csv_no_column_highlight = 1


" Set up Lua
luafile ~/.vim/scripts/init.lua

" Packages and package settings
set nocompatible
filetype off

call plug#begin()
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree'
Plug 'chrisbra/csv.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-fugitive'
" Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'yegappan/greplace'
"Plug 'lepture/vim-jinja'
call plug#end()

augroup mine
    au!
    " Filetype handling
    au BufRead,BufNewFile *.ll setf lex
    au BufRead,BufNewFile *.c2 set filetype=c2
    au BufRead,BufNewFile *.frag set filetype=glsl
    au BufRead,BufNewFile *.geom set filetype=glsl
    au BufRead,BufNewFile *.glsl set filetype=glsl
    au BufRead,BufNewFile *.go set filetype=go
    au BufRead,BufNewFile *.vert set filetype=glsl
    au BufRead,BufNewFile *.c2 setf c2
    au BufRead,BufNewFile *.c.tmpl set filetype=c
    au BufRead,BufNewFile *.h.tmpl set filetype=c
    au BufRead,BufNewFile *.d.tmpl set filetype=text
    au FileType gitcommit set wrap
    au FileType gitcommit set linebreak
    au FileType gitcommit set nolist
    au FileType markdown set wrap
    au FileType markdown set linebreak
    au FileType markdown set nolist

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

    "au BufWritePost * silent! execute '!git add % || true > /dev/null'

    " Set custom tabstops for scripting languages
    au FileType css set shiftwidth=2 tabstop=2 softtabstop=2
    au FileType eruby set shiftwidth=2 tabstop=2 softtabstop=2
    au FileType html set shiftwidth=2 tabstop=2 softtabstop=2
    au FileType javascript set shiftwidth=2 tabstop=2 softtabstop=2
    au FileType jsx set shiftwidth=2 tabstop=2 softtabstop=2
    au FileType lua set shiftwidth=2 tabstop=2 softtabstop=2
    au FileType ruby set shiftwidth=2 tabstop=2 softtabstop=2
    au FileType c set shiftwidth=4 tabstop=4 softtabstop=4
    au FileType cpp set shiftwidth=4 tabstop=4 softtabstop=4
    au FileType xml set shiftwidth=4 tabstop=4 softtabstop=4

    " Strip trailing whitespace on save
    au BufWritePre * :%s/\s\+$//e
augroup END

" Disable annoying bells
let g:netrw_silent = 1
set vb t_vb=

" Syntax highlighting
syntax on
colors onedark
set background=dark

" Tabs/whitespace
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Chrome options
set backspace=2
set encoding=utf-8
set fileencoding=utf-8
set guioptions=
set nobomb
set nowrap
set number
set ruler
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

" Key mappings
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <Up> <Nop>

" Remap ESC key
inoremap jk <Esc>
inoremap <Esc> <Nop>

set wildignore+=*/.git/*,./tmp/*,./log/*,*/vendor/bundle/*,*/__pycache__/*,*/node_modules/*,*/public/*
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
