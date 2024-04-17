" Options ---------------------------------------------------------------------

let g:ale_sign_error = '●'
let g:ale_sign_warning = '●'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '%severity%: [%linter%] %s'
let g:ale_disable_lsp = 0
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 1
let g:ale_ruby_rubocop_executable = 'bundle'
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1

" Highlights ------------------------------------------------------------------

hi ALEErrorSign guibg=#ECECEC guifg=#FF1100
hi ALEWarningSign guibg=#ECECEC guifg=#FF8800
hi SignColumn guibg=#ECECEC

if !exists("g:ale_linters")
    let g:ale_linters = {}
endif

let g:ale_linters['typescriptreact'] = ['tslint', 'tsserver']
let g:ale_linters['javascript'] = ['eslint', 'tsserver']
let g:ale_linters['ruby'] = ['rubocop']
let g:ale_linters['cpp'] = ['clangd']
let g:ale_linters['c'] = ['clangd']
let g:ale_linters['python'] = ['jedils', 'mypy']
let g:ale_linters['thrift'] = ['thrift']
let g:ale_linters['go'] = ['gopls', 'golint'] 

if !exists("g:ale_fixers")
    let g:ale_fixers = {}
endif

let g:ale_fixers['javascript'] = ['eslint', 'prettier']
let g:ale_fixers['javascriptreact'] = ['eslint', 'prettier']
let g:ale_fixers['typescriptreact'] = ['prettier']
let g:ale_fixers['typescript'] = ['prettier']
let g:ale_fixers['ruby'] = ['rubocop']
let g:ale_fixers['c'] = ['clang-format']
let g:ale_fixers['cpp'] = ['clang-format']
let g:ale_fixers['python'] = ['autoflake', 'yapf']
let g:ale_fixers['json'] = ['prettier']
let g:ale_fixers['go'] = ['gofmt']

" Mappings ------------------------------------------------------------------

nmap gd :ALEGoToDefinition<CR>
nmap gt :ALEGoToTypeDefinition<CR>
nmap gi :ALEGoToImplementation<CR>
nmap gr :ALEFindReferences<CR>


