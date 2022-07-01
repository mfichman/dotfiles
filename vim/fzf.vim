hi FzfNormal ctermbg=15 ctermfg=0

let g:fzf_colors =
\ { 'fg':      ['fg', 'FzfNormal'],
  \ 'bg':      ['bg', 'FzfNormal'],
  \ 'hl':      ['fg', 'FzfNormal'],
  \ 'fg+':     ['fg', 'FzfNormal', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'FzfNormal', 'CursorColumn'],
  \ 'hl+':     ['fg', 'FzfNormal'],
  \ 'info':    ['fg', 'FzfNormal'],
  \ 'border':  ['fg', 'FzfNormal'],
  \ 'prompt':  ['fg', 'FzfNormal'],
  \ 'pointer': ['fg', 'FzfNormal'],
  \ 'marker':  ['fg', 'FzfNormal'],
  \ 'spinner': ['fg', 'FzfNormal'],
  \ 'header':  ['fg', 'FzfNormal'] }

command! -nargs=0 Fgl call fzf#run({'source': 'git ls-files', 'sink': 'e', 'down': '20%', 'options': '--no-color'})

autocmd! FileType fzf
autocmd FileType fzf set laststatus=0 noshowmode noruler | autocmd BufLeave <buffer> set laststatus=2 showmode ruler

