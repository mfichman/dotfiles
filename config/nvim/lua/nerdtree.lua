-- Open NERDTree by default
vim.cmd 'autocmd VimEnter * NERDTree'
vim.cmd 'autocmd VimEnter * wincmd w'

vim.NERDTreeHighlightCursorline = 0
vim.NERDTreeShowHidden = 1
vim.NERDTreeIgnore = {'^\\.git$', '\\.swp$'}
