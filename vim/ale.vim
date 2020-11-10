" Options ---------------------------------------------------------------------

let g:ale_sign_error = '●'
let g:ale_sign_warning = '●'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '%severity%: [%linter%] %s'
let g:ale_disable_lsp = 1
let g:ale_linters_explicit = 1
let g:ale_lint_on_save = 1

" Highlights ------------------------------------------------------------------

hi ALEErrorSign guibg=#ECECEC guifg=#FF1100
hi ALEWarningSign guibg=#ECECEC guifg=#FF8800
hi SignColumn guibg=#ECECEC
