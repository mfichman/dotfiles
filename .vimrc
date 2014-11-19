set t_Co=256
set guioptions-=r
set guioptions-=T
set guioptions-=m
set number
set nowrap
"colors solarized
"colors github
"colors solarized
"colors molokai
"colors default
colors solarized
"colors default
"set background=dark
set ruler
set tabstop=3
set expandtab
set tw=85
set noerrorbells
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

au BufRead,BufNewFile *.pkg.inc set filetype=make

autocmd FileChangedRO * :call Edit()
"nnoremap r "_d

function! Edit()
   :silent !edit.py %:p 
   let l:winview = winsaveview()
   :edit
   :syntax on
   call winrestview(l:winview)
   :redraw!
endfunction!

"set nonumber
"
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

:au BufNewFile *.cfg 0r ~/.vim/skeleton.cpp | $
:au BufNewFile *.cpp 0r ~/.vim/skeleton.cpp | $
:au BufNewFile *.tac 0r ~/.vim/skeleton.cpp | $
:au BufNewFile *.tin 0r ~/.vim/skeleton.cpp | $
:au BufNewFile *.itin 0r ~/.vim/skeleton.cpp | $
:au BufNewFile *.h 0r ~/.vim/skeleton.cpp | $
:au BufNewFile *.py 0r ~/.vim/skeleton.py | $


set tags=./tags,~/tags
set path+=/usr/include/**

autocmd FileType lua setlocal shiftwidth=2 tabstop=2

