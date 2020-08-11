" Vim syntax file
" Language: C2
" Maintainer: Matt Fichman <matt.fichman@gmail.com>
" Info: Yeeehaw!
" URL: http://stanford.edu/~mfichman
" Release Coordinator: Matt Fichman <matt.fichman@gmail.com>

"syn region c3Function transparent matchgroup=c3Define start=/\<func\>/ end=/\<end\>/ contains=ALL
"syn region c3IfEnd transparent matchgroup=c3Keyword start=/\<if\>/ end=/\<end\>/ contains=ALL

"syn keyword apType func return macro field in var
"yn keyword apStructure struct enum
syn keyword c3Keyword return while for break type else if import func local
syn keyword c3Boolean true false
syn keyword c3Todo contained TODO FIXME XXX
syn keyword c3Constant nil
syn cluster c3CommentGroup contains=apTodo

"syn match c3Keyword "{"
"syn match c3Keyword "}"

syn region c3Parens start=+(+ end=+)+ contains=ALL

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
syn match c3Operator ","
syn match c3Operator "&"
syn match c3Operator "<"
syn match c3Operator ">"
syn match c3Operator "=="
syn match none "->"
syn match c3Operator ":"
syn match c3Operator "?"
syn match none "::"

syn match c3Import "\(import\)\@<=\s*[a-zA-Z_][a-zA-Z0-9_:]*"
syn match c3Function "\(func\)\@<=\s*[a-zA-Z][a-zA-Z0-9_]*=\?"

syn match c3Constant "[a-zA-Z][a-zA-Z0-9_]*\(\s*=\s*import\)\@="
syn match c3Function "[a-zA-Z][a-zA-Z0-9_]*\(\s*=\s*func\)\@="

syn match c3Number "\<[0-9][0-9]*\>"
syn match c3Number "\<0x[0-9A-Fa-f][0-9A-Fa-f]*\>"

syn region c3String start=+"+ end=+"+ skip=+\\"\|\\\\+
syn region c3String start=+'+ end=+'+ skip=+\\'\|\\\\+

syn region c3Comment start="#" end="$"
syn region c3Comment start="/\*" end="\*/"

hi def link c3Keyword Keyword
hi def link c3Todo Todo
hi def link c3Comment Comment
hi def link c3String String
hi def link c3Constant Constant
hi def link c3Number Number
hi def link c3Function Function
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

