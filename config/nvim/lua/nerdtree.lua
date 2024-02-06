-- Open NERDTree by default
if vim.g.gui then
  vim.cmd 'autocmd VimEnter * NERDTree'
  vim.cmd 'autocmd VimEnter * wincmd w'
end

vim.cmd 'autocmd FileType nerdtree setlocal signcolumn=no'

vim.g.NERDTreeHighlightCursorline = 0
vim.g.NERDTreeShowHidden = 1
vim.g.NERDTreeIgnore = {'^\\.git$', '\\.swp$'}
