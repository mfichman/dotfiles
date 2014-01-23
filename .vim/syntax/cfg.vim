

syn keyword cfgKeyword transactSeq source0
syn keyword cfgKeyword target source typeName mountFlags dependency mount
syn keyword cfgKeyword partitionName sysdbPriority firstHeartbeatWaitTime heartbeatInterval
syn keyword cfgKeyword arg env agentEnvConfig runMode unmountType timeoutPeriod
syn keyword cfgKeyword runPyServer debugPort listenPort transactMode storageMode
syn keyword cfgTodo contained FixMe

syn region cfgString start=+"+ end=+"+ 
syn region cfgString start=+'+ end=+'+

syn keyword cfgConstant true false 
syn match cfgNumber "\<[0-9][0-9]*\>"

syn match cfgVariable "${[^}]*}"
syn match cfgInclude "#include"

syn cluster cfgCommentGroup contains=cfgTodo
syn region cfgComment start="//" end="$" contains=cfgTodo
syn region cfgComment start="/\*" end="\*/" contains=cfgTodo


hi def link cfgInclude Include
hi def link cfgCopyright Include
hi def link cfgVariable Include
hi def link cfgKeyword Keyword
hi def link cfgTodo Todo
hi def link cfgComment Comment
hi def link cfgString String
hi def link cfgConstant Constant
hi def link cfgNumber Number
hi def link cfgFunction Function
hi def link cfgType Structure 
hi def link cfgOperator Operator
hi def link cfgStringDelim Delimiter
hi def link cfgIdentifier Normal
hi def link cfgFlagDef Error
hi def link cfgFlagStart Exception
hi def link cfgFlag Include
hi def link cfgAccessory Keyword
hi def link cfgImport Include
hi def link cfgAttr Identifier

let b:current_syntax = "cfg"
