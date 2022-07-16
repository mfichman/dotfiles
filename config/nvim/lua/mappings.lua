-- Key mappings
vim.keymap.set('i', '<down>', '<nop>')
vim.keymap.set('i', '<left>', '<nop>')
vim.keymap.set('i', '<right>', '<nop>')
vim.keymap.set('i', '<up>', '<nop>')
vim.keymap.set('n', '<down>', '<nop>')
vim.keymap.set('n', '<left>', '<nop>')
vim.keymap.set('n', '<right>', '<nop>')
vim.keymap.set('n', '<up>', '<nop>')

-- Remap ESC key
vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set('i', '<esc>', '<nop>')

-- Map search function
vim.keymap.set('n', '<c-p>', ':Fgl<cr>', {silent = true})

-- Map terminal commands
--vim.keymap.set('n',  <silent> <leader>tf :call RunTestFile()<cr>
--vim.keymap.set('n',  <silent> <leader>tt :call RunTest()<cr>
--vim.keymap.set('n',  <silent> <leader>f :ALEFix<cr>
--vim.keymap.set('n',  <silent> <leader>b :Make build<cr>
--vim.keymap.set('n',  <silent> <leader>e :call RunCommand(getline('.'))<cr>
vim.keymap.set('n', 'dr', ':diffget REMOTE<cr>', {silent = true})
vim.keymap.set('n', 'db', ':diffget BASE<cr>', {silent = true})
vim.keymap.set('n', 'dl', ':diffget LOCAL<cr>', {silent = true})
vim.keymap.set('n', 'dn', ':/<<<<<<<<cr>', {silent = true})
vim.keymap.set('n', 'dp', ':?<<<<<<<<cr>', {silent = true})

-- Paste/delete without yanking!!
vim.keymap.set('v', 'p', '"0p')
vim.keymap.set('v', 'P', '"0P')
vim.keymap.set('v', 'y', '"0y')
vim.keymap.set('v', 'd', '"0d')

