" Vim color file
"
" Author: Anthony Carapetis <anthony.carapetis@gmail.com>
"
" Note: Based on github's syntax highlighting theme
"       Used Brian Mock's darkspectrum as a starting point/template
"       Thanks to Ryan Heath for an easy list of some of the colours:
"       http://rpheath.com/posts/356-github-theme-for-syntax-gem

hi clear

set background=light
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif
let g:colors_name="github"

hi Normal       ctermfg=16 ctermbg=231

" {{{ Cursor
hi Cursor		ctermbg=59 ctermfg=231
hi CursorLine	ctermbg=188
hi CursorColumn	ctermbg=189
" }}}

" {{{ Diff
hi DiffAdd         ctermfg=22 ctermbg=194 cterm=none
hi DiffChange                    ctermbg=231 cterm=none
hi DiffText        ctermfg=17 ctermbg=189 cterm=none
hi DiffDelete      ctermfg=188 ctermbg=224 cterm=none
" }}}

" {{{ Folding / Line Numbering / Status Lines
hi Folded		ctermbg=231 ctermfg=102 cterm=bold
hi vimFold		ctermbg=231 ctermfg=102 cterm=bold
hi FoldColumn	ctermbg=231 ctermfg=102 cterm=bold

hi LineNr		ctermfg=102 ctermbg=255 cterm=bold
hi NonText		ctermfg=102 ctermbg=255
hi Folded		ctermfg=102 ctermbg=255 cterm=bold
hi FoldeColumn  ctermfg=102 ctermbg=255 cterm=bold

hi VertSplit	ctermbg=145 ctermfg=145 cterm=none
hi StatusLine   ctermbg=145 ctermfg=59 cterm=bold
hi StatusLineNC ctermbg=188 ctermfg=59 cterm=italic
" }}}

" {{{ Misc
hi ModeMsg		ctermfg=88
hi MoreMsg		ctermfg=88

hi Title		ctermfg=203
hi WarningMsg	ctermfg=203
hi SpecialKey   ctermfg=30 cterm=italic

hi MatchParen	ctermbg=189 ctermfg=16
hi Underlined	ctermfg=16 cterm=underline
hi Directory	ctermfg=88
" }}}

" {{{ Search, Visual, etc
hi Visual		ctermfg=231 ctermbg=61 cterm=none
hi VisualNOS    ctermfg=231 ctermbg=24 cterm=none
hi IncSearch	ctermbg=189 ctermfg=16 cterm=italic
hi Search		ctermbg=189 ctermfg=16 cterm=italic
" }}}

" {{{ Syntax groups
hi Ignore		ctermfg=102
hi Identifier	ctermfg=31
hi PreProc		ctermfg=145 cterm=bold
hi Comment		ctermfg=102
hi Constant		ctermfg=30 cterm=none
hi String		ctermfg=161
hi Function		ctermfg=88 cterm=bold
hi Statement	ctermfg=16 cterm=bold
hi Type			ctermfg=60 cterm=bold
hi Number		ctermfg=30
hi Todo			ctermfg=231 ctermbg=88 cterm=bold
hi Special		ctermfg=28 cterm=bold
hi rubySymbol   ctermfg=90
hi Error        ctermbg=231 ctermfg=196 cterm=undercurl
hi Todo         ctermbg=231 ctermfg=196 cterm=underline
hi Label        ctermfg=16 cterm=bold
hi StorageClass ctermfg=16 cterm=bold
hi Structure    ctermfg=16 cterm=bold
hi TypeDef      ctermfg=16 cterm=bold
" }}}

" {{{ Completion menus
hi WildMenu     ctermfg=111 ctermbg=60 cterm=none

hi Pmenu        ctermbg=102 ctermfg=231 cterm=bold
hi PmenuSel     ctermbg=189 ctermfg=16 cterm=italic
hi PmenuSbar    ctermbg=16 ctermfg=59
hi PmenuThumb   ctermbg=145 ctermfg=145
" }}}

" {{{ Spelling
hi spellBad     guisp=#fcaf3e
hi spellCap     guisp=#73d216
hi spellRare    guisp=#fcaf3e
hi spellLocal   guisp=#729fcf
" }}}

" {{{ Aliases
hi link cppSTL          Function
hi link cppSTLType      Type
hi link Character		Number
hi link htmlTag			htmlEndTag
"hi link htmlTagName     htmlTag
hi link htmlLink		Underlined
hi link pythonFunction	Identifier
hi link Question		Type
hi link CursorIM		Cursor
hi link VisualNOS		Visual
hi link xmlTag			Identifier
hi link xmlTagName		Identifier
hi link shDeref			Identifier
hi link shVariable		Function
hi link rubySharpBang	Special
hi link perlSharpBang	Special
hi link schemeFunc      Statement
"hi link shSpecialVariables Constant
"hi link bashSpecialVariables Constant
" }}}

" {{{ Tabs (non-gui0
hi TabLine		ctermfg=59 ctermbg=188 cterm=none
hi TabLineFill	ctermfg=59 ctermbg=188 cterm=none
hi TabLineSel	ctermfg=59 cterm=bold
" }}}
"
" vim: sw=4 ts=4 foldmethod=marker

