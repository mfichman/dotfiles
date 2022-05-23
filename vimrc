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
Plug 'chrisbra/csv.vim'
Plug 'dense-analysis/ale'
Plug 'fatih/vim-go'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'keith/swift.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ngmy/vim-rubocop'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ruby/vim-ruby'
Plug 'yegappan/greplace'
Plug 'yuezk/vim-js'
Plug 'ziglang/zig.vim'
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
    au BufRead,BufNewFile *.h set filetype=c
    au BufRead,BufNewFile *.c.tmpl set filetype=c
    au BufRead,BufNewFile *.h.tmpl set filetype=c
    au BufRead,BufNewFile *.d.tmpl set filetype=text
    au BufRead,BufNewFile *.csv.erb set filetype=eruby.csv
    au BufRead,BufNewFile *.json.erb set filetype=eruby.json
    au BufRead,BufNewFile *.amp.erb set filetype=eruby.html
    au BufRead,BufNewFile *.pdf.prawn set filetype=ruby

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
    au BufNewFile *.cc lua skeleton('cpp')
    au BufNewFile *.hpp lua skeleton('cpp')
    au BufNewFile *.frag lua skeleton('glsl')
    au BufNewFile *.geom lua skeleton('glsl')
    au BufNewFile *.glsl lua skeleton('glsl')
    au BufNewFile *.h lua skeleton('h')
    au BufNewFile *.lua lua skeleton('lua')
    au BufNewFile *.py lua skeleton('py')
    au BufNewFile *.vert lua skeleton('glsl')
    au BufNewFile *.jg lua skeleton('jg')
    au BufNewFile *.c3 lua skeleton('c3')

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
    au FileType c3 set shiftwidth=2 tabstop=2 softtabstop=2
    au FileType python set shiftwidth=2 tabstop=2 softtabstop=2

    " Strip trailing whitespace on save
    "au BufWritePre * :%s/\s\+$//e
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

" Tab formatting options
filetype plugin indent on

" Build recursive
command! -nargs=* Make execute '!make -C ' . fnamemodify(findfile("Makefile", ".;"), ':p:h') . ' ' . <f-args>

source ~/.vim/airline.vim
source ~/.vim/ale.vim
source ~/.vim/coc.vim
source ~/.vim/fzf.vim
source ~/.vim/terminal.vim
source ~/.vim/nerdtree.vim
source ~/.vim/mappings.vim
