local lspconfig = require('lspconfig')

-- Autoformat
vim.cmd "autocmd BufWritePre *.{jsx,tsx,js,ts,cpp,hpp,c,h,go} lua vim.lsp.buf.format()"

-- Mappings.
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

local function list_workspace_folders()
  print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local function on_attach(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', list_workspace_folders)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', vim.lsp.buf.format, bufopts)
end

local function setup(name, settings)
  local settings = settings or {}

  local cmp_nvim_lsp = require('cmp_nvim_lsp')
  local capabilities = cmp_nvim_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())

  settings.capabilities = capabilities
  settings.on_attach = on_attach

  lspconfig[name].setup(settings)
end

setup('gopls')
setup('eslint')
setup('clangd', {filetypes = {'c', 'cpp', 'cuda', 'objc', 'objcpp'}})
setup('tsserver')
setup('jedi_language_server', {
  init_options = {
    workspace = {
      extraPaths = {
        './build/py'
      }
    }
  }
})
setup('jsonls')
setup('java_language_server', {cmd = {"/Users/Matt/java-language-server/dist/lang_server_mac.sh"}})
setup('efm', {
  settings = {
    --version = 2,
    --logLevel = 1,
    --lintDebounce = '1s',
    rootMarkers = {".git/"},
    languages = {
      go = {
        {
          lintCommand = "golint", 
          lintStdin = false, 
          lintFormats={'%f:%l:%c: %m'}, 
          lintIgnoreExitCode = true, 
          lintSeverity = 2
        }
      }
    },
  },
  filetypes = {'go'}
})
