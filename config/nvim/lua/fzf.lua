--hi FzfNormal ctermbg=15 ctermfg=0

vim.g.fzf_colors = {
  ['fg'] =       {'fg', 'FzfNormal'},
  ['bg'] =       {'bg', 'FzfNormal'},
  ['hl'] =       {'fg', 'FzfNormal'},
  ['fg+'] =      {'fg', 'FzfNormal', 'CursorColumn', 'Normal'},
  ['bg+'] =      {'bg', 'FzfNormal', 'CursorColumn'},
  ['hl+'] =      {'fg', 'FzfNormal'},
  ['info'] =     {'fg', 'FzfNormal'},
  ['border'] =   {'fg', 'FzfNormal'},
  ['prompt'] =   {'fg', 'FzfNormal'},
  ['pointer'] =  {'fg', 'FzfNormal'},
  ['marker'] =   {'fg', 'FzfNormal'},
  ['spinner'] =  {'fg', 'FzfNormal'},
  ['header'] =   {'fg', 'FzfNormal'} 
}

vim.api.nvim_create_user_command('Fgl', "call fzf#run({'source': 'git -C $(git rev-parse --show-toplevel) ls-files', 'sink': 'e', 'down': '20%', 'options': '--no-color'})", {
  bang = true, 
  nargs = 0,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'fzf',
  command = 'set laststatus=0 noshowmode noruler | autocmd BufLeave <buffer> set laststatus=2 showmode ruler',
})
