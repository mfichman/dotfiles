vim.cmd 'set rtp^=~/.vim'

vim.g.netrw_slilent = 1
vim.g.neovide_cursor_animation_length = 0.001

-- Font/rendering settings
if vim.fn.has('macunix') and not vim.g.remote then
  vim.opt.guifont = 'Source Code Pro for Powerline:h13'
else
  vim.opt.guifont = 'Source Code Pro for Powerline:h10'
end

-- Tabs/whitespace
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Chrome options
vim.opt.backspace = '2'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.guioptions = ''
vim.opt.bomb = false
vim.opt.wrap = false
vim.opt.number = true
vim.opt.ruler = true

-- Encoding options
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

-- Wildcards
vim.opt.wildignore = {'*.git' , '*.swp', '*.sw\\w'}

-- Diagnostics
if vim.g.gui then
  vim.opt.signcolumn = 'yes'
  vim.cmd("sign define DiagnosticSignError text=E texthl=DiagnosticSignError")
  vim.cmd("sign define DiagnosticSignWarn text=W texthl=DiagnosticSignWarn")
  vim.cmd("sign define DiagnosticSignInfo text=I texthl=DiagnosticSignInfo")
  vim.cmd("sign define DiagnosticSignHint text=H texthl=DiagnosticSignHint")
end

-- Colors
if vim.g.gui then
  vim.cmd('colorscheme github')
else
  vim.cmd('colorscheme molokai')
end

-- Shortcuts
vim.cmd("command! -nargs=* Make :call RunCommand('make -C ' . fnamemodify(findfile('Makefile', '.;'), ':p:h') . ' ' . <q-args>)")
vim.cmd("command! -nargs=* GoBuild :call RunCommand('cd ' . fnamemodify(findfile('go.mod', '.;'), ':p:h') . ' && go build -x')")
vim.cmd("command! -nargs=* GoTest :call RunCommand('cd ' . fnamemodify(findfile('go.mod', '.;'), ':p:h') . ' && go test -x')")
vim.cmd("command! -nargs=* Go :call RunCommand('cd ' . fnamemodify(findfile('go.mod', '.;'), ':p:h') . ' && go ' . <q-args>)")
vim.cmd("source ~/.vim/terminal.vim")

require 'plugins'
require 'mappings'
require 'lsp'
require 'airline'
require 'fzf'
require 'skeleton'
require 'nerdtree'
