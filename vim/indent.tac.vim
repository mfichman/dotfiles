" Vim indent file
" Language:	Tacc
" Maintainer:	Pokey Rule <pokey@optumsoft.com>
" Last Change:	Wed Jul 28 13:48:11 PDT 2010

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

" Set the function to do the work.
setlocal indentexpr=GetTaccIndent()

let b:undo_indent = "set cin< cino< indentkeys< indentexpr<"

" Only define the function once.
if exists("*GetTaccIndent")
  finish
endif

function! SkipTaccBlanksAndComments(startline)
  let lnum = a:startline
  while lnum > 1
    let lnum = prevnonblank(lnum)
    if getline(lnum) =~ '\*/\s*$'
      while getline(lnum) !~ '/\*' && lnum > 1
        let lnum = lnum - 1
      endwhile
      if getline(lnum) =~ '^\s*/\*'
        let lnum = lnum - 1
      else
        break
      endif
    elseif getline(lnum) =~ '^\s*//'
      let lnum = lnum - 1
    else
      break
    endif
  endwhile
  return lnum
endfunction

function GetTaccIndent()

  " Tacc is just like C; use the built-in C indenting and then correct a few
  " specific cases.
  let theIndent = cindent(v:lnum)

  let currLine = getline(v:lnum)
  " If we're in the middle of a comment then just trust cindent
  if currLine =~ '^\s*\*'
    return theIndent
  endif

  let lnum = SkipTaccBlanksAndComments(v:lnum - 1)
  let prevLine = getline(lnum)

  if currLine =~ '\s*}\s*'
    return match(prevLine, '\S') - &sw
  endif

  if theIndent == 0 && (currLine =~ '[^:]:[^:]' || currLine =~ '[^:]:$')
    let theIndent = match(prevLine, '\S')
    if prevLine !~ '[;}]\s*\(//.*\)\=$'
      let theIndent = theIndent + &sw
    endif
    return theIndent
  endif

  if prevLine =~ '[^:]:[^:]' && prevLine !~ ',\s*$'
    let incorrectIndent = matchlist(getline(lnum), '^\s*\([^:]*:\s*\)')[1]
    let theIndent = theIndent - strlen(incorrectIndent)
  endif

  return theIndent
endfunction

" vi: sw=2 et
