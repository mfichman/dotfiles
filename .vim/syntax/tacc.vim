syn keyword tacKeyword if while foreach for wait timeout overriding continue break
syn keyword tacKeyword invasive overridden coroutine sparse stack queue collection
syn keyword tacKeyword extern array extensible initially else new embedded return
syn keyword tacKeyword inline overridden overridable static this ordered

syn keyword tacKeyword namespace mutable forward default operator
syn keyword tacKeyword inlineImplFile implFile constAttr enum indexedAttr friendAtter
syn keyword tacKeyword constraint range friendAttr aliasAttr enumId procedure
syn keyword tacKeyword parentAttr overloading or local immutable
"syn match tacKeyword "\(+[A-Za-z]\+\)\?\(-[A-Za-z]\+\)\?"



syn keyword tacTodo contained FixMe
syn keyword tacImport CppInlineInclude TacModule CppBlock CppInlineBlock CBlock CppInclude
syn keyword tacImport taccExtension
"syn match tacImport "<<= [A-Za-z]*"

syn region tacString start=+"+ end=+"+ skip=+\\"+
syn region tacString start=+'+ end=+'+ skip=+\\'+

syn keyword tacConstant true false 
syn keyword tacOperator + - / * <> == != ^ ?
syn match tacNumber "\<[0-9][0-9]*\>"
syn match tacFunction "[@][a-z][a-zA-Z0-9_]*"
"syn match tacFunction "[a-z][A-Za-z0-9_]*(\@="
syn match tacIdentifier "[a-z][A-Za-z_0-9]*"
"syn match tacAttr "\(\:\:\)\@<=[a-z][A-Za-z0-9_]*\(\[[\*A-Za-z0-9_]*\]\)\? \(=>\)\@="

syn match tacType "[A-Z][A-Za-z0-9]*"
syn keyword tacType int short byte bool void char float double
"syn keyword tacAccessory Ptr PtrConst RawPtr
"
syn match tacKeyword "\(:[ ]\)\@<=out\> *[A-Z]\@="
syn match tacKeyword "\(:[ ]\)\@<=in\> *[A-Z]\@="
syn match tacKeyword "\(:[ ]\)\@<=inout\> *[A-Z]\@="


syn keyword tacFlag contained null default index iterator range operator clone on 
syn keyword tacFlag contained activity generator inverse impl isArrayAttr 
syn keyword tacFlag contained hasInlineAccessor hasInlineMutator hasFactoryFunction 
syn keyword tacFlag contained isAppliedOnInit isBitSetType isScheduled isAppliedOnWrite 
syn keyword tacFlag contained isAppliedOnEnclosingDelete isMultiWriterReflected
syn keyword tacFlag contained isConstructorParam isNetByteOrder hasDataMember 
syn keyword tacFlag contained hasExternalAccessorImpl hasExternalMutatorImpl 
syn keyword tacFlag contained hasRawPtrImpl isWeakReference isDefaultCollection 
syn keyword tacFlag contained isLoggedAttr isMutableAttr hasNotifyOnUpdate 
syn keyword tacFlag contained isNonconstPtr isEqualityIndependentAttr 
syn keyword tacFlag contained isQueueCollection hasRawPtrInterface isSelfNotifying
syn keyword tacFlag contained isOrderedIndexed hasTemplateAccessor 
syn keyword tacFlag contained usesNontypedefPtrType isValueAttr hasVirtualMutator 
syn keyword tacFlag contained isReadable isWritable hasInlinedMutator 
syn keyword tacFlag contained hasInlinedAccessor isPublicReadable isPublicWritable
syn keyword tacFlag contained isValidPtr allowsScheduledNotification isBackptr
syn keyword tacFlag contained hasPackedRep isDerivable isAutoconvertToRepType 
syn keyword tacFlag contained hasFunctorInterface hasIndexedFunctorInterface 
syn keyword tacFlag contained hasIndexedFunctorConstInterface isMultipleInheritIf 
syn keyword tacFlag contained allowsMultipleNotifiees allowsNotifieeImpl 
syn keyword tacFlag contained usesNontypedefPtr hasOwnPtrInterface hasVirtualBaseType 
syn keyword tacFlag contained largerThanPtr isConnectionInType isConnectionOutType
syn keyword tacFlag contained hasExternalAccessor hasExternalMutator allowsDirInstantiation
syn keyword tacFlag contained period isNotifyingByDefault isAppliedOnDelete 
syn keyword tacFlag contained isAppliedInDestructor allowsNotifiee allowsMultipleWriters
syn keyword tacFlag contained hasProxyUpdatesReflected hasBarrierSemantics
syn keyword tacFlag contained isDSafeCertified allowsIndirectRef allowsCoalescedProxyUpdates
syn keyword tacFlag contained isInterfaceType
syn match tacFlag contained "+=\|=\|-="
syn match tacFlagStart contained "`"
syn match tacFlagDef "`\([A-Za-z0-9]*\|+=\|=\|-=\)" contains=tacFlag,tacFlagStart

syn cluster tacCommentGroup contains=tacTodo
syn region tacComment start="//" end="$" contains=tacTodo
syn region tacComment start="/\*" end="\*/" contains=tacTodo

syn match tacOper  "||"
syn match tacOper "&&"
syn match tacOper "="
syn match tacOper "<<"
syn match tacOper ">>"
syn match tacOper "!"
syn match tacOper "+"
syn match tacOper "->\@!"
syn match tacOper "\*"
syn match tacOper "%"
syn match tacOper "\/\/@!"
syn match tacOper "\^"
syn match tacOper ","
syn match tacOper "&"
syn match tacOper "<"
syn match tacOper ">"
syn match tacOper "=="
syn match none "->"
syn match tacOper ":"
syn match tacOper "?"
syn match none "::"
syn match none " : "
syn match none " : : "


hi def link tacKeyword Keyword
hi def link tacTodo Todo
hi def link tacComment Comment
hi def link tacString String
hi def link tacConstant Constant
hi def link tacNumber Number
hi def link tacFunction Function
hi def link tacType Structure 
hi def link tacOperator Operator
hi def link tacStringDelim Delimiter
hi def link tacIdentifier Normal
hi def link tacFlagDef Error
hi def link tacFlagStart Exception
hi def link tacFlag Include
hi def link tacAccessory Keyword
hi def link tacImport Include
hi def link tacAttr Identifier
hi def link tacOper Operator

let b:current_syntax = "tacc"
