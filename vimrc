" Fix RTP for Windows
set rtp+=~/.vim

if has("unix")
  set luadll=/usr/local/lib/liblua5.3.dylib
endif

" CTRL-P options
let g:ctrlp_follow_symlinks = 0
let g:ctrlp_max_files=0
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_user_command = ['.git', 'git ls-files --cached --others --exclude-standard %s']
let g:ctrlp_path_nolim = 1

" OneDark options
let g:onedark_terminal_italics = 1

" CSV options
let g:csv_no_conceal = 1
let g:csv_no_column_highlight = 1

" Set up Lua
luafile ~/.vim/scripts/init.lua

" Packages and package settings
call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree'
Plug 'chrisbra/csv.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-fugitive'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'yegappan/greplace'
Plug 'keith/swift.vim'
Plug 'othree/yajs.vim'
Plug 'ngmy/vim-rubocop'
call plug#end()

augroup mine
    au!
    " Filetype handling
    au BufRead,BufNewFile *.ll setf lex
    au BufRead,BufNewFile *.c2 set filetype=c2
    au BufRead,BufNewFile *.c3 set filetype=c3
    au BufRead,BufNewFile *.frag set filetype=glsl
    au BufRead,BufNewFile *.geom set filetype=glsl
    au BufRead,BufNewFile *.glsl set filetype=glsl
    au BufRead,BufNewFile *.go set filetype=go
    au BufRead,BufNewFile *.vert set filetype=glsl
    au BufRead,BufNewFile *.c2 setf c2
    au BufRead,BufNewFile *.c.tmpl set filetype=c
    au BufRead,BufNewFile *.h.tmpl set filetype=c
    au BufRead,BufNewFile *.d.tmpl set filetype=text
    au BufRead,BufNewFile *.csv.erb set filetype=eruby.csv
    au BufRead,BufNewFile *.json.erb set filetype=eruby.json
    au BufRead,BufNewFile *.amp.erb set filetype=eruby.html

    au FileType gitcommit set wrap
    au FileType gitcommit set linebreak
    au FileType gitcommit set nolist
    au FileType markdown set wrap
    au FileType markdown set linebreak
    au FileType markdown set nolist

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
    au FileType css set shiftwidth=2 tabstop=2 softtabstop=2
    au FileType hs set shiftwidth=2 tabstop=2 softtabstop=2
    au FileType haskell set shiftwidth=2 tabstop=2 softtabstop=2
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
augroup end

" Open NERDTree by default
if exists('loaded_nerd_tree')
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
end

" Disable annoying bells
let g:netrw_silent = 1
set vb t_vb=

" Syntax highlighting
syntax on
if has("win32")
  colors github
elseif system("defaults read -g AppleInterfaceStyle") =~ '^Dark'
  colors onedark
else
  colors github
endif

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

" Font/rendering settings
if has("win32")
  set rop=type:directx,geom:1,renmode:0,taamode:0
  set guifont=Consolas:h10
else
  set guifont=Operator\ Mono\ Light:h13
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

set wildignore+=*/.git/*,./tmp/*,./log/*,*/vendor/bundle/*,*/__pycache__/*,*/node_modules/*,*/public/*,*/spec/fixtures/*

if exists('g:loaded_fugitive')
  set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
endif

command Spin silent execute '!spin push' shellescape(expand('%') . ':' . line('.'))
command Rubocop execute '!rubocop' shellescape(expand('%'))
