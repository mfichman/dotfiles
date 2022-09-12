function! RunCommand(cmd)
    let window_id = win_getid()
    if exists('g:terminal_window_id') && win_id2win(g:terminal_window_id) != 0
        call win_gotoid(g:terminal_window_id)
    elseif winwidth(0) > 200
        botright vnew
        let g:terminal_window_id = win_getid()
    else
        wincmd b
        below new
        let g:terminal_window_id = win_getid()
    end

    call win_execute(g:terminal_window_id, "terminal! " . a:cmd)
    call win_gotoid(window_id)
endfunction

function! RunTestFile()
    if &filetype ==# 'go'
        execute 'Go test -v ' . fnamemodify(expand('%'), ':p:h')
    else
    end
endfunction

function! RunTest()
    if &filetype ==# 'go'
        "execute 'Go test -v ' . fnamemodify(expand('%'), ':p:h') . ' -check.v -check.f ^' . expand('<cword>') . '$'
        execute 'Make run-test TEST_NAME='. expand('<cword>')
        "command! -nargs=* Make :call RunCommand('make -C ' . fnamemodify(findfile("Makefile", ".;"), ':p:h') . ' ' . <q-args>)
    else
    end
endfunction

