" Vim syntax file
" Language: C2
" Maintainer: Matt Fichman <matt.fichman@gmail.com>
" Info: Yeeehaw!
" URL: http://stanford.edu/~mfichman
" Release Coordinator: Matt Fichman <matt.fichman@gmail.com>

syn keyword c3Keyword return while for break else if import func match var intf const struct union static typeof pub xor inline extend
syn keyword c3Boolean true false
syn keyword c3Todo contained TODO FIXME XXX
syn keyword c3Constant nil
syn cluster c3CommentGroup contains=c3Todo

"syn match c3Parameter "[a-zA-Z][a-zA-Z0-9_]*" contained contains=c3Keyword

syn match c3Operator "->"
syn match c3Operator "+"
syn match c3Operator "-"
syn match c3Operator "/"
syn match c3Operator "*"
syn match c3Operator "<>"
syn match c3Operator "<"
syn match c3Operator ">"
syn match c3Operator ">="
syn match c3Operator "<="
syn match c3Operator "=="
syn match c3Operator "!="
syn match c3Operator "^"
syn match c3Operator "=>"
syn match c3Operator "||"
syn match c3Operator "&&"
syn match c3Operator "="
syn match c3Operator "<<"
syn match c3Operator ">>"
syn match c3Operator "!"
syn match c3Operator "+"
syn match c3Operator "=>"
syn match c3Operator "\*"
syn match c3Operator "%"
syn match c3Operator "\/\/@!"
syn match c3Operator "\^"
syn match c3Operator "&"
syn match c3Operator "=="
syn match c3Operator ":"
syn match c3Operator "?"
syn match c3Operator "::"
syn match c3Operator "\.\.\."
syn match c3Operator "|"

syn match c3Import "\(import\)\@<=\s*[a-zA-Z_][a-zA-Z0-9_:]*"

syn match c3Def "[a-z][a-zA-Z0-9_]*\(\s*=\s*\)\@="
"syn region c3Type start=":" end="$"

syn match c3Number "\<[0-9]\+\(\.[0-9]\+\)\{-\}\(e[+-]\{-\}[0-9]\+\)\{-\}\>"
syn match c3Number "\<0x[0-9A-Fa-f]\+\>"
syn match c3Number "\<0o[0-7]\+\>"
syn match c3Number "\<0b[0-1]\+\>"
syn match c3Constant "[A-Z][a-zA-Z0-9_]*"

syn region c3String start=+"+ end=+"+ skip=+\\"\|\\\\+
syn region c3String start=+'+ end=+'+ skip=+\\'\|\\\\+

syn region c3Block start=+{+ end=+}+ contains=ALLBUT,c3Def,c3Parameter
syn region c3Parens start=+(+ end=+)+ contains=ALLBUT,c3Def,c3Parameter
syn region c3Function start=+\(func\)\@<=(+ end=+)+ contains=c3Parameter,c3Keyword,c3Constant

syn region c3Comment start="#" end="$"
syn region c3BlockComment start="/\*" end="\*\/"

hi def link c3Def1 none
hi def link c3Type Constant
hi def link c3Keyword Keyword
hi def link c3Todo Todo
hi def link c3Comment Comment
hi def link c3BlockComment Comment
hi def link c3String String
hi def link c3Constant Constant
hi def link c3Parameter Constant
hi def link c3Number Number
hi def link c3Function none
hi def link c3Operator Operator
hi def link c3Symbol Constant
hi def link c3Regex String
hi def link c3Structure Structure
hi def link c3Conditional Conditional
hi def link c3Include Include
hi def link c3Boolean Boolean
hi def link c3Define Define
hi def link c3Operator Operator

let b:current_syntax = "c3"

