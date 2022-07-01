au BufRead,BufNewFile *.frag set filetype=glsl
au BufNewFile *.frag lua skeleton('glsl')
