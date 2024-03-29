let g:airline_powerline_fonts = 1
let g:airline_section_z = '%p%% %#__accent_bold#%{g:airline_symbols.linenr}%l/%L%#__restore__#:%02v'
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
    \ 't'      : 'TERM',
    \ 'v'      : 'VISUAL',
    \ 'V'      : 'VISUAL',
    \ ''     : 'VISUAL',
    \ }

let g:airline_symbols = {}
let g:airline_symbols.maxlinenr = ' '
let g:airline_symbols.spell = ''
let g:airline_symbols.notexists = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.whitespace = ''
let g:airline_left_alt_sep=""
let g:airline_right_alt_sep=""
