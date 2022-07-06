-- Open NERDTree by default
if vim.g.gui then
  vim.cmd 'autocmd VimEnter * NERDTree'
  vim.cmd 'autocmd VimEnter * wincmd w'
end

vim.cmd 'autocmd FileType nerdtree setlocal signcolumn=no'

vim.NERDTreeHighlightCursorline = 0
vim.NERDTreeShowHidden = 1
vim.NERDTreeIgnore = {'^\\.git$', '\\.swp$'}
