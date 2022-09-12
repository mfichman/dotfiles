" Fix RTP for Windows
set rtp^=~/.vim

" OneDark options
let g:onedark_terminal_italics = 0

" CSV options
let g:csv_no_conceal = 1
let g:csv_no_column_highlight = 1

" Set up Lua
luafile ~/.vim/scripts/init.lua

" Packages and package settings
call plug#begin('~/.vim/plugged')
Plug 'sebdah/vim-delve'
Plug 'chrisbra/csv.vim'
Plug 'dense-analysis/ale'
"Plug 'fatih/vim-go'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'keith/swift.vim'
Plug 'maxmellon/vim-jsx-pretty'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ngmy/vim-rubocop'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ruby/vim-ruby'
Plug 'yegappan/greplace'
Plug 'yuezk/vim-js'
Plug 'ziglang/zig.vim'
Plug 'solarnz/thrift.vim'
call plug#end()

augroup mine
    au!

    au FileType gitcommit set wrap
    au FileType gitcommit set linebreak
    au FileType gitcommit set nolist
    au FileType markdown set wrap
    au FileType markdown set linebreak
    au FileType markdown set nolist
augroup end

" Disable annoying bells
let g:netrw_silent = 1
set vb t_vb=

" Syntax highlighting
syntax on
if has("win32")
  let g:airline_theme = 'base16'
  colors github

elseif system("defaults read -g AppleInterfaceStyle") =~ '^Dark'
  let g:airline_theme = 'onedark'
  colors onedark
else
  let g:airline_theme = 'base16'
  colors github
endif

" Launch fullscreen
if has("win32")
    au GUIEnter * simalt ~x
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

" Encoding options
set encoding=utf-8
scriptencoding utf-8
setglobal fileencoding=utf-8

" Wildcards
set wildignore=*.git,*.swp

" Font/rendering settings
if has("win32")
  set rop=type:directx,geom:1,renmode:0,taamode:0
  set guifont=Source\ Code\ Pro\ for\ Powerline:h10
else
  set guifont=Source\ Code\ Pro\ for\ Powerline:h13
endif

" Code folding
"set foldmethod=syntax
"set foldnestmax=1
"set foldlevel=0
"set foldenable
"
" Build recursive
command! -nargs=* Make :call RunCommand('make -C ' . fnamemodify(findfile("Makefile", ".;"), ':p:h') . ' ' . <q-args>)
command! -nargs=* GoBuild :call RunCommand('cd ' . fnamemodify(findfile("go.mod", ".;"), ':p:h') . ' && go build -x')
command! -nargs=* GoTest :call RunCommand('cd ' . fnamemodify(findfile("go.mod", ".;"), ':p:h') . ' && go test -x')
command! -nargs=* Go :call RunCommand('cd ' . fnamemodify(findfile("go.mod", ".;"), ':p:h') . ' && go ' . <q-args>)


" Tab formatting options
filetype plugin indent on

source ~/.vim/airline.vim
source ~/.vim/ale.vim
source ~/.vim/fzf.vim
source ~/.vim/terminal.vim
source ~/.vim/nerdtree.vim
source ~/.vim/mappings.vim
source ~/.vim/deoplete.vim

