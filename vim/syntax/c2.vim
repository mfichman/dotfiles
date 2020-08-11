" Vim syntax file
" Language: C2
" Maintainer: Matt Fichman <matt.fichman@gmail.com>
" Info: Yeeehaw!
" URL: http://stanford.edu/~mfichman
" Release Coordinator: Matt Fichman <matt.fichman@gmail.com>

"syn keyword apType func return macro field in var
"yn keyword apStructure struct enum
syn keyword c2Keyword func return macro module
syn keyword c2Keyword struct enum quote union
"init new
syn keyword c2Type field var case
syn keyword c2Type int char short long const static
syn keyword c2Statement return
syn keyword c2Conditional for return while for if elseif else break
syn keyword c2Include import
syn keyword c2Boolean true false

syn keyword c2Todo contained TODO FIXME XXX

syn cluster c2CommentGroup contains=apTodo

syn keyword c2Constant null

"syn match c2Function "\(func\)\@<=\s*[a-zA-Z_][a-zA-Z0-9_]*"
"syn match c2Function "\(module\)\@<=\s*[a-zA-Z_][a-zA-Z0-9_]*"
"syn match c2Function "\(macro\)\@<=\s*[a-zA-Z_][a-zA-Z0-9_]*"
"syn match c2Function "\(struct\)\@<=\s*[a-zA-Z_][a-zA-Z0-9_]*"
syn match c2Type "\(field [a-zA-Z][a-zA-Z_0-9]* \)\@<=[a-zA-Z_][a-zA-Z0-9_]*"
syn match c2Type "\(var [a-zA-Z][a-zA-Z_0-9]* \)\@<=[a-zA-Z_][a-zA-Z0-9_]*"
syn match c2Type "\() \)\@<=[a-zA-Z_][a-zA-Z0-9_]*"
syn match c2Type "\(:\s\s*\**\)\@<=[a-zA-Z_][a-zA-Z0-9_.]*" contains=c2Resolution
syn match c2Type "\(=> \**\)\@<=[a-zA-Z_][a-zA-Z0-9_]*"
syn match c2Type "\(const \)\@<=[a-zA-Z_][a-zA-Z0-9_]*"
syn match c2Type "\(static \)\@<=[a-zA-Z_][a-zA-Z0-9_]*"
syn match c2Constant "#[a-zA-Z_][a-zA-Z0-9_]*"
syn match c2Constant "@[a-zA-Z_][a-zA-Z0-9_]*"
syn region c2Parens start=+(+ end=+)+ contains=ALL
syn region c2Constant start=+#(+ end=+)+ contains=ALL keepend
syn match c2Import "\(import \)\@<=[a-zA-Z_][a-zA-Z0-9_:]*"

syn keyword c2Operator + - / * <> == != ^ ? := > < <= >=
syn match c2Resolution "\."
syn match c2Operator "=>"
syn match c2Operator "||"
syn match c2Operator "&&"
syn match c2Operator "="
syn match c2Operator "<<"
syn match c2Operator ">>"
syn match c2Operator "!"
syn match c2Operator "+"
syn match c2Operator "=>"
syn match c2Operator "\*"
syn match c2Operator "%"
syn match c2Operator "\/\/@!"
syn match c2Operator "\^"
syn match c2Operator ","
syn match c2Operator "&"
syn match c2Operator "<"
syn match c2Operator ">"
syn match c2Operator "=="
syn match none "->"
syn match c2Operator ":"
syn match c2Operator "?"
syn match none "::"

syn match c2Number "\<[0-9][0-9]*\>"
syn match c2Number "\<0x[0-9A-Fa-f][0-9A-Fa-f]*\>"

syn region c2String start=+"+ end=+"+ skip=+\\"\|\\\\+
syn region c2String start=+'+ end=+'+ skip=+\\'\|\\\\+

syn region c2Comment start="//" end="$"
syn region c2Comment start="/\*" end="\*/"

hi def link c2Keyword Keyword
hi def link c2Todo Todo
hi def link c2Comment Comment
hi def link c2String String
hi def link c2Constant Constant
hi def link c2Number Number
hi def link c2Function Function
hi def link c2Type Type
hi def link c2Operator Operator
hi def link c2Symbol Constant
hi def link c2Regex String
hi def link c2Structure Structure
hi def link c2Conditional Conditional
hi def link c2Include Include
hi def link c2Boolean Boolean
hi def link c2Operator Operator
hi def link c2Define Define

let b:current_syntax = "c2"

