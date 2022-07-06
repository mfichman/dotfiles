vim.cmd 'set rtp^=~/.vim'

vim.g.netrw_slilent = 1
vim.g.neovide_cursor_animation_length = 0.001

-- Colors
if vim.g.gui then
  vim.cmd('colorscheme github')
else
  vim.cmd('colorscheme molokai')
end

-- Font/rendering settings
--vim.opt.guifont = 'Source Code Pro for Powerline:h13'
vim.opt.guifont = 'Source Code Pro for Powerline:h10'

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
  vim.cmd('hi SignColumn guibg=#ECECEC')
  vim.cmd('hi DiagnosticSignError guibg=#ECECEC guifg=Red')
  vim.cmd('hi DiagnosticSignWarn guibg=#ECECEC guifg=Orange')
  vim.cmd('hi DiagnosticSignInfo guibg=#ECECEC guifg=LightBlue')
  vim.cmd('hi DiagnosticSignHint guibg=#ECECEC guifg=LightGrey')
  vim.cmd("sign define DiagnosticSignError text=● texthl=DiagnosticSignError")
  vim.cmd("sign define DiagnosticSignWarn text=● texthl=DiagnosticSignWarn")
  vim.cmd("sign define DiagnosticSignInfo text=● texthl=DiagnosticSignInfo")
  vim.cmd("sign define DiagnosticSignHint text=● texthl=DiagnosticSignError")
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
