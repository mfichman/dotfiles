-- Open NERDTree by default
vim.cmd 'autocmd VimEnter * NERDTree'
vim.cmd 'autocmd VimEnter * wincmd w'
vim.cmd 'autocmd FileType nerdtree setlocal signcolumn=no'

vim.NERDTreeHighlightCursorline = 0
vim.NERDTreeShowHidden = 1
vim.NERDTreeIgnore = {'^\\.git$', '\\.swp$'}
