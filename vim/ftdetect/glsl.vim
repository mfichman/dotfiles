au BufRead,BufNewFile *.glsl set filetype=glsl
au BufNewFile *.glsl lua skeleton('glsl')
