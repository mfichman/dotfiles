function RunCommand(cmd)
    let window_id = win_getid()
    if exists('g:terminal_window_id') && win_id2win(g:terminal_window_id) != 0
        call win_gotoid(g:terminal_window_id)
    else
        below new
        let g:terminal_window_id = win_getid()
    end

    call win_execute(g:terminal_window_id, "terminal ++curwin " . a:cmd)
    call win_gotoid(window_id)
endfunction
