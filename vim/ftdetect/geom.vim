au BufRead,BufNewFile *.geom set filetype=glsl
au BufNewFile *.geom lua skeleton('glsl')
