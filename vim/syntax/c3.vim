" Vim syntax file
" Language: C2
" Maintainer: Matt Fichman <matt.fichman@gmail.com>
" Info: Yeeehaw!
" URL: http://stanford.edu/~mfichman
" Release Coordinator: Matt Fichman <matt.fichman@gmail.com>

syn keyword c3Keyword and break do else elseif extend field final for from if in inline let match module mut or pub raise reflect ret static then try typeof while xor
syn keyword c3Keyword fn func intf struct union var const as tailcall import

syn keyword c3Boolean true false
syn keyword c3Boolean true false
syn keyword c3Todo contained TODO FIXME XXX
syn keyword c3Note contained NOTE
syn keyword c3Constant nil
syn cluster c3CommentGroup contains=c3Todo,c3Note

syn match c2None "\."
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
syn match c3Operator "?"
syn match c3Operator "\.\.\."
syn match c3Operator "|"

syn match c3Dot "\."
syn match c3Dot "::"
syn match c3Dot ":"
syn match c3Dot "("
syn match c3Dot ")"

syn match c3Number "\<[0-9]\+\([.][0-9]\+\)\{,1}\(e[+-]\{,1}[0-9]\+\)\{,1}\>"
syn match c3Number "\<0x[0-9A-Fa-f]\+\>"
syn match c3Number "\<0o[0-7]\+\>"
syn match c3Number "\<0b[0-1]\+\>"
syn match c3Type "\<[A-Z][a-zA-Z0-9_]*"
syn match c3Type "[a-zA-Z0-9.:]*[A-Z][a-zA-Z0-9_]*" contains=c3Dot,c3Type,c3Operator
syn match c3Field "\(\(\s\|{\)\)\@<=\.[a-zA-Z0-9_]\+"
syn match c3Static ":[a-zA-z][a-zA-Z0-9_]*"

syn match c3Func "\(fn\s\+\)\@<=[a-zA-Z0-9_.:()]\+(\@=" contains=c3Dot,c3Type,c3Operator
syn match c3Func "[a-zA-Z0-9_.:()]\+\(\s\+=\s\+fn\)\@=" contains=c3Dot,c3Type,c3Operator


syn region c3String start=+"+ end=+"+ skip=+\\"\|\\\\+
syn region c3String start=+'+ end=+'+ skip=+\\'\|\\\\+

syn region c3Comment start="#" end="$" contains=c3Todo
syn region c3BlockComment start="#{" end="}#" contains=c3Todo

hi def link c3Static rubySymbol
hi def link c3Field Identifier
hi def link c3Def Define
hi def link c3Type Type
hi def link c3Keyword Keyword
hi def link c3Todo Todo
hi def link c3Comment Comment
hi def link c3BlockComment Comment
hi def link c3String String
hi def link c3Number Number
hi def link c3Func Function
hi def link c3Operator Operator
hi def link c3Constant Constant
hi def link c3Regex String
hi def link c3Structure Structure
hi def link c3Conditional Conditional
hi def link c3Boolean Boolean
hi def link c3Define Define
hi def link c3Operator Operator
hi def link c3Note PreProc

let b:current_syntax = "c3"

