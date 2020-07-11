if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

if has("folding") && exists("g:fennel_fold") && g:fennel_fold > 0
  setlocal foldmethod=syntax
endif

" -*- KEYWORDS -*-
let s:fennel_syntax_keywords = {
    \   'fennelBoolean': ["false","true"]
    \ , 'fennelCond': ["if","when","match"]
    \ , 'fennelConstant': ["nil"]
    \ , 'fennelDefine': ["def","local","global","var","let"]
    \ , 'fennelFunc': [".","set","set-forcibly!","tset",":","+","..","^","-","*","%","/","//","or","and",">","<",">=","<=","=","==","~=","not","#","require-macros","macros","eval-compiler","quote"]
    \ , 'fennelMacro': ["->","->>","-?>","-?>>","doto"]
    \ , 'fennelRepeat': ["each","while","for"]
    \ , 'fennelSpecial': ["do","fn","partial","lamda","λ","require","values","luaexpr","luastatement","assert","type","pairs","ipairs","tostring","tonumber","unpack","setmetatable","getmetatable"]
    \ }
    " \ , 'fennelVariable': []
    " \ , 'fennelException': []

function! s:syntax_keyword(dict)
  for key in keys(a:dict)
    execute 'syntax keyword' key join(a:dict[key], ' ')
  endfor
endfunction

if exists('b:fennel_syntax_without_core_keywords') && b:fennel_syntax_without_core_keywords
  " Only match language specials and primitives
  for s:key in ['fennelBoolean', 'fennelConstant', 'fennelException', 'fennelSpecial']
    execute 'syntax keyword' s:key join(s:fennel_syntax_keywords[s:key], ' ')
  endfor
else
  call s:syntax_keyword(s:fennel_syntax_keywords)
endif

if exists('g:fennel_syntax_keywords')
  call s:syntax_keyword(g:fennel_syntax_keywords)
endif

if exists('b:fennel_syntax_keywords')
  call s:syntax_keyword(b:fennel_syntax_keywords)
endif

unlet! s:key
delfunction s:syntax_keyword

" Keywords are symbols:
"   static Pattern symbolPat = Pattern.compile("[:]?([\\D&&[^/]].*/)?([\\D&&[^/]][^/]*)");
" But they:
"   * Must not end in a : or /
"   * Must not have two adjacent colons except at the beginning
"   * Must not contain any reader metacharacters except for ' and #
syntax match fennelKeyword "\v<:{1,2}%([^ \n\r\t()\[\]{}";@^`~\\%/]+/)*[^ \n\r\t()\[\]{}";@^`~\\%/]+:@<!>"

syntax match fennelStringEscape "\v\\%([\\btnfr"]|u\x{4}|[0-3]\o{2}|\o{1,2})" contained

syntax region fennelString matchgroup=fennelStringDelimiter start=/"/ skip=/\\\\\|\\"/ end=/"/ contains=fennelStringEscape,@Spell

syntax match fennelCharacter "\\."
syntax match fennelCharacter "\\o\%([0-3]\o\{2\}\|\o\{1,2\}\)"
syntax match fennelCharacter "\\u\x\{4\}"
syntax match fennelCharacter "\\space"
syntax match fennelCharacter "\\tab"
syntax match fennelCharacter "\\newline"
syntax match fennelCharacter "\\return"
syntax match fennelCharacter "\\backspace"
syntax match fennelCharacter "\\formfeed"

syntax match fennelSymbol "\v%([a-zA-Z!$&*_+=|<.>?-]|[^\x00-\x7F])+%(:?%([a-zA-Z0-9!#$%&*_+=|'<.>/?-]|[^\x00-\x7F]))*[#:]@<!"

let s:radix_chars = "0123456789abcdefghijklmnopqrstuvwxyz"
for s:radix in range(2, 36)
  execute 'syntax match fennelNumber "\v\c<[-+]?' . s:radix . 'r[' . strpart(s:radix_chars, 0, s:radix) . ']+>"'
endfor
unlet! s:radix_chars s:radix

syntax match fennelNumber "\v<[-+]?%(0\o*|0x\x+|[1-9]\d*)N?>"
syntax match fennelNumber "\v<[-+]?%(0|[1-9]\d*|%(0|[1-9]\d*)\.\d*)%(M|[eE][-+]?\d+)?>"
syntax match fennelNumber "\v<[-+]?%(0|[1-9]\d*)/%(0|[1-9]\d*)>"

syntax match fennelVarArg "&"

syntax match fennelQuote "'"
syntax match fennelQuote "`"
syntax match fennelUnquote "\~"
syntax match fennelUnquote "\~@"
syntax match fennelMeta "\^"
syntax match fennelDeref "@"
syntax match fennelDispatch "\v#[\^'=<_]?"

syntax keyword fennelCommentTodo contained FIXME XXX TODO FIXME: XXX: TODO:

syntax match fennelComment ";.*$" contains=fennelCommentTodo,@Spell
syntax match fennelComment "#!.*$"

" -*- TOP CLUSTER -*-
" syntax cluster fennelTop contains=@Spell,fennelAnonArg,fennelBoolean,fennelCharacter,fennelComment,fennelCond,fennelConstant,fennelDefine,fennelDeref,fennelDispatch,fennelError,fennelException,fennelFunc,fennelKeyword,fennelMacro,fennelMap,fennelMeta,fennelNumber,fennelQuote,fennelRepeat,fennelSexp,fennelSpecial,fennelString,fennelSymbol,fennelUnquote,fennelVarArg,fennelVariable,fennelVector
syntax cluster fennelTop contains=@Spell,fennelAnonArg,fennelBoolean,fennelCharacter,fennelComment,fennelCond,fennelConstant,fennelDefine,fennelDeref,fennelDispatch,fennelError,fennelFunc,fennelKeyword,fennelMacro,fennelMap,fennelMeta,fennelNumber,fennelQuote,fennelRepeat,fennelSexp,fennelSpecial,fennelString,fennelSymbol,fennelUnquote,fennelVarArg,fennelVector

syntax region fennelSexp   matchgroup=fennelParen start="("  end=")" contains=@fennelTop fold
syntax region fennelVector matchgroup=fennelParen start="\[" end="]" contains=@fennelTop fold
syntax region fennelMap    matchgroup=fennelParen start="{"  end="}" contains=@fennelTop fold

" Highlight superfluous closing parens, brackets and braces.
syntax match fennelError "]\|}\|)"

syntax sync fromstart

highlight default link fennelConstant                  Constant
highlight default link fennelBoolean                   Boolean
highlight default link fennelCharacter                 Character
highlight default link fennelKeyword                   Keyword
highlight default link fennelNumber                    Number
highlight default link fennelString                    String
highlight default link fennelStringDelimiter           Delimiter
highlight default link fennelStringEscape              Character

highlight default link fennelVariable                  Identifier
highlight default link fennelCond                      Conditional
highlight default link fennelDefine                    Define
highlight default link fennelException                 Exception
highlight default link fennelFunc                      Function
highlight default link fennelMacro                     Macro
highlight default link fennelRepeat                    Repeat

highlight default link fennelSpecial                   Special
highlight default link fennelVarArg                    Special
highlight default link fennelQuote                     SpecialChar
highlight default link fennelUnquote                   SpecialChar
highlight default link fennelMeta                      SpecialChar
highlight default link fennelDeref                     SpecialChar
highlight default link fennelDispatch                  SpecialChar

highlight default link fennelComment                   Comment
highlight default link fennelCommentTodo               Todo

highlight default link fennelError                     Error

highlight default link fennelParen                     Delimiter

let b:current_syntax = "fennel"

let &cpo = s:cpo_save
unlet! s:cpo_save

" vim: set filetype=vim foldmethod=marker foldlevel=0 nowrap:
