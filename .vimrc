au!

set t_Co=256
set guioptions-=r
set guioptions-=T
set guioptions-=m
set number
set nowrap
set ruler
set tabstop=3
set expandtab
set tw=85
set noerrorbells
set noerrorbells visualbell t_vb=
"colors solarized
"colors github
"colors solarized
"colors molokai
"colors default
"colors solarized
"colors default
"set background=dark
syntax on
colors github

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

luafile ~/.vim/scripts/init.lua

au GUIEnter * set visualbell t_vb=

au BufRead,BufNewFile *.pkg.inc set filetype=make
au BufNewFile *.cfg lua skeleton('cfg')
au BufNewFile *.cpp lua skeleton('cpp')
au BufNewFile *.tac lua skeleton('cpp')
au BufNewFile *.tin lua skeleton('cpp')
au BufNewFile *.itin lua skeleton('cpp')
au BufNewFile *.h lua skeleton('h')
au BufNewFile *.py lua skeleton('py')
au BufNewFile *.lua lua skeleton('lua')

au FileType lua setlocal shiftwidth=2 tabstop=2
