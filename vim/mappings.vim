" Key mappings
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>

" Remap ESC key
inoremap jk <esc>
inoremap <esc> <nop>

" Map search function
nnoremap <silent> <c-p> :Fgl<cr>

" Map terminal commands
nnoremap <silent> <leader>tf :call RunCommand("python tool\\test " . expand('%'))<cr>
nnoremap <silent> <leader>tt :call RunCommand("python tool\\test " . expand('%'))<cr>
nnoremap <silent> <leader>tc :call RunCommand("ruby bin\\tc")<cr>
nnoremap <silent> <leader>f :ALEFix<cr>
nnoremap <silent> <leader>b :Build<cr>
nnoremap <silent> <leader>e :call RunCommand(getline('.'))<cr>
nnoremap <silent> dr :diffget REMOTE<cr>
nnoremap <silent> db :diffget BASE<cr>
nnoremap <silent> dl :diffget LOCAL<cr>

" Paste/delete without yanking!!
vnoremap p "0p
vnoremap P "0P
vnoremap y "0y
vnoremap d "0d

nnoremap <a-cr> :ALEFix<cr>
