" Vim syntax file
" Language: C2
" Maintainer: Matt Fichman <matt.fichman@gmail.com>
" Info: Yeeehaw!
" URL: http://stanford.edu/~mfichman
" Release Coordinator: Matt Fichman <matt.fichman@gmail.com>

syn match c3Parameter "[a-zA-Z][a-zA-Z0-9_]*" contained

syn keyword c3Keyword return while for break type else if import local func struct union var match obj
syn keyword c3Boolean true false
syn keyword c3Todo contained TODO FIXME XXX
syn keyword c3Constant nil
syn cluster c3CommentGroup contains=c3Todo

syn match c3Operator "->"
syn keyword c3Operator + - / * <> == != ^ ? := > < <= >=
syn match c3Resolution "\."
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

syn match c3Def1 "[a-zA-Z][a-zA-Z0-9_]*\(\s*=\s*\)\@="
syn region c3TypeAnnotationName start="\([a-zA-Z][a-zA-Z0-9_]*\)\s*:" end="$" keepend contains=c3TypeAnnotation,c3Comment,c3Operator,c3Keyword
syn region c3TypeAnnotation start=":" end="$" keepend contains=c3TypeAnnotationName,c3Comment,c3Operator,c3Parameter,c3Keyword

syn match c3Number "\<[0-9][0-9]*\>"
syn match c3Number "\<0x[0-9A-Fa-f][0-9A-Fa-f]*\>"

syn region c3String start=+"+ end=+"+ skip=+\\"\|\\\\+
syn region c3String start=+'+ end=+'+ skip=+\\'\|\\\\+

syn region c3Block start=+{+ end=+}+ contains=ALLBUT,c3Def1,c3Def2,c3Parameter
syn region c3Parens start=+(+ end=+)+ contains=ALLBUT,c3Def1,c3Def2,c3Parameter
syn region c3Function1 start=+\(func\)\@<=(+ end=+)+ contains=c3Parameter

syn region c3Comment start="#" end="$"
syn region c3Comment start="/\*" end="\*/"

hi def link c3Def1 none
hi def link c3TypeAnnotationName none
hi def link c3Keyword Keyword
hi def link c3Todo Todo
hi def link c3Comment Comment
hi def link c3String String
hi def link c3Constant Constant
hi def link c3Parameter Constant
hi def link c3Number Number
hi def link c3Function none
hi def link c3Type Type
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

