" Options ---------------------------------------------------------------------

let g:ale_sign_error = '●'
let g:ale_sign_warning = '●'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '%severity%: [%linter%] %s'
let g:ale_disable_lsp = 1
let g:ale_lint_on_save = 0
let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 1
let g:ale_ruby_rubocop_executable = 'bundle'

" Highlights ------------------------------------------------------------------

hi ALEErrorSign guibg=#ECECEC guifg=#FF1100
hi ALEWarningSign guibg=#ECECEC guifg=#FF8800
hi SignColumn guibg=#ECECEC

if !exists("g:ale_linters")
    let g:ale_linters = {}
endif

let g:ale_linters['ruby'] = ['rubocop']
let g:ale_linters['cpp'] = ['clangd']
let g:ale_linters['c'] = ['clangd', 'clangtidy']
"let g:ale_linters['python'] = []

if !exists("g:ale_fixers")
    let g:ale_fixers = {}
endif

let g:ale_fixers['javascript'] = ['eslint']
let g:ale_fixers['ruby'] = ['rubocop']
let g:ale_fixers['javascriptreact'] = ['eslint']
let g:ale_fixers['c'] = ['clangtidy']
let g:ale_fixers['python'] = ['autoflake', 'yapf']
let g:ale_fixers['json'] = ['prettier']
