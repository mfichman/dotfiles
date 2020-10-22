let g:airline_powerline_fonts = 1
let g:airline_section_z = '%p%% %#__accent_bold#%{g:airline_symbols.linenr}%l%#__restore__#%#__accent_bold#/%L%#__restore__# %3v'
let g:airline_mode_map = {
    \ '__'     : '-',
    \ 'c'      : 'C',
    \ 'i'      : 'INSERT',
    \ 'ic'     : 'INSERT',
    \ 'ix'     : 'INSERT',
    \ 'n'      : 'NORMAL',
    \ 'multi'  : 'MULTI',
    \ 'ni'     : 'NORMAL',
    \ 'no'     : 'NORMAL',
    \ 'R'      : 'REPLACE',
    \ 'Rv'     : 'REPLACE',
    \ 's'      : 'SUB',
    \ 'S'      : 'SUB',
    \ ''     : 'SUB',
    \ 't'      : 'T',
    \ 'v'      : 'VISUAL',
    \ 'V'      : 'VISUAL',
    \ ''     : 'VISUAL',
    \ }

if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif

let g:airline_symbols.maxlinenr = ' '
