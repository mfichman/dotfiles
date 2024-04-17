vim.cmd 'set rtp^=~/.vim'
vim.cmd 'set t_ut='

vim.g.netrw_slilent = 1
vim.g.neovide_cursor_animation_length = 0.001

-- Font/rendering settings
vim.cmd('hi Comment gui=none cterm=none')
if vim.fn.has('macunix') == 1 and not vim.g.remote then
  vim.opt.guifont = 'Source Code Pro for Powerline:h12'
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
vim.opt.bomb = false
vim.opt.wrap = false
vim.opt.number = true
vim.opt.ruler = true
if vim.g.gui then
  vim.opt.guioptions = ''
end

-- Encoding options
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

-- Wildcards
vim.opt.wildignore = {'*.git' , '*.swp', '*.sw\\w'}

-- Diagnostics
vim.opt.signcolumn = 'yes'

-- Clipboard
--vim.opt.clipboard = 'unnamedplus'

if vim.g.gui then
  vim.cmd("sign define DiagnosticSignError text=E texthl=DiagnosticSignError linehl= numhl=")
  vim.cmd("sign define DiagnosticSignWarn text=W texthl=DiagnosticSignWarn linehl= numhl=")
  vim.cmd("sign define DiagnosticSignInfo text=I texthl=DiagnosticSignInfo linehl= numhl=")
  vim.cmd("sign define DiagnosticSignHint text=H texthl=DiagnosticSignHint linehl= numhl=")
end

vim.diagnostic.config { severity_sort = true }

-- Colors
if vim.g.gui then
  vim.cmd('colorscheme github')
else
  vim.cmd('colorscheme molokai')
  vim.cmd('hi DiagnosticSignError ctermfg=1 guifg=red ctermbg=235 guibg=#232526')
  vim.cmd('hi DiagnosticSignWarn ctermfg=3 guifg=orange ctermbg=235 guibg=#232526')
  vim.cmd('hi DiagnosticSignInfo ctermfg=4 guifg=lightblue ctermbg=235 guibg=#232526')
  vim.cmd('hi DiagnosticSignHint ctermfg=7 guifg=grey ctermbg=235 guibg=#232526')
  vim.cmd('hi Pmenu ctermfg=81 ctermbg=235 guifg=#66D9EF guibg=#232526')
end

-- Shortcuts
vim.cmd("command! -nargs=* Bazel :call RunCommand('bazel ' . <q-args> . ' //' . fnamemodify(findfile('BUILD.bazel', '.;'), ':.:h') . '/...')")
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
require 'complete'
require 'dict'
