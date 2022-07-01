au BufRead,BufNewFile *.vert set filetype=glsl
au BufNewFile *.vert lua skeleton('glsl')
