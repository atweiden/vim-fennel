if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syntax iskeyword @,33,35-38,42-43,45-58,60-63,94-95,124,126

" -*- KEYWORDS -*-
let s:fennel_syntax_keywords = {
    \   'fennelBoolean': ["false"
    \ ,                   "true"]
    \ , 'fennelCond': ["if"
    \ ,                "match"
    \ ,                "when"]
    \ , 'fennelConstant': ["nil"]
    \ , 'fennelDefineFun': ["fn"
    \ ,                     "lambda"
    \ ,                     "λ"
    \ ,                     "macro"
    \ ,                     "quote"]
    \ , 'fennelDefineVar': ["global"
    \ ,                     "let"
    \ ,                     "local"
    \ ,                     "var"
    \ ,                     "set"
    \ ,                     "set-forcibly!"
    \ ,                     "tset"]
    \ , 'fennelComparator': ["and"
    \ ,                      "or"
    \ ,                      "not"
    \ ,                      ">"
    \ ,                      "<"
    \ ,                      ">="
    \ ,                      "<="
    \ ,                      "="
    \ ,                      "=="
    \ ,                      "~="]
    \ , 'fennelFunc': ["."
    \ ,                ":"
    \ ,                "+"
    \ ,                ".."
    \ ,                "^"
    \ ,                "-"
    \ ,                "*"
    \ ,                "%"
    \ ,                "/"
    \ ,                "//"
    \ ,                "length"
    \ ,                "#"]
    \ , 'fennelMacro': ["->"
    \ ,                 "->>"
    \ ,                 "-?>"
    \ ,                 "-?>>"
    \ ,                 "doto"
    \ ,                 "pick-args"
    \ ,                 "pick-values"
    \ ,                 "macrodebug"
    \ ,                 "import-macros"]
    \ , 'fennelRepeat': ["each"
    \ ,                  "while"
    \ ,                  "for"]
    \ , 'fennelSpecial': ["do"
    \ ,                   "partial"
    \ ,                   "hashfn"
    \ ,                   "include"
    \ ,                   "values"
    \ ,                   "comment"
    \ ,                   "doc"
    \ ,                   "lua"
    \ ,                   "eval-compiler"
    \ ,                   "macros"
    \ ,                   "require-macros"]
    \ , 'fennelException': ["error"]
    \ , 'fennelLuaKeyword': ["_G"
    \ ,                      "_VERSION"
    \ ,                      "assert"
    \ ,                      "collectgarbage"
    \ ,                      "coroutine"
    \ ,                      "coroutine.create"
    \ ,                      "coroutine.isyieldable"
    \ ,                      "coroutine.resume"
    \ ,                      "coroutine.running"
    \ ,                      "coroutine.status"
    \ ,                      "coroutine.wrap"
    \ ,                      "coroutine.yield"
    \ ,                      "debug"
    \ ,                      "debug.debug"
    \ ,                      "debug.gethook"
    \ ,                      "debug.getinfo"
    \ ,                      "debug.getlocal"
    \ ,                      "debug.getmetatable"
    \ ,                      "debug.getregistry"
    \ ,                      "debug.getupvalue"
    \ ,                      "debug.getuservalue"
    \ ,                      "debug.sethook"
    \ ,                      "debug.setlocal"
    \ ,                      "debug.setmetatable"
    \ ,                      "debug.setupvalue"
    \ ,                      "debug.setuservalue"
    \ ,                      "debug.traceback"
    \ ,                      "debug.upvalueid"
    \ ,                      "debug.upvaluejoin"
    \ ,                      "dofile"
    \ ,                      "getmetatable"
    \ ,                      "io"
    \ ,                      "io.close"
    \ ,                      "io.flush"
    \ ,                      "io.input"
    \ ,                      "io.lines"
    \ ,                      "io.open"
    \ ,                      "io.output"
    \ ,                      "io.popen"
    \ ,                      "io.read"
    \ ,                      "io.stderr"
    \ ,                      "io.stdin"
    \ ,                      "io.stdout"
    \ ,                      "io.tmpfile"
    \ ,                      "io.type"
    \ ,                      "io.write"
    \ ,                      "ipairs"
    \ ,                      "load"
    \ ,                      "loadfile"
    \ ,                      "math"
    \ ,                      "math.abs"
    \ ,                      "math.acos"
    \ ,                      "math.asin"
    \ ,                      "math.atan"
    \ ,                      "math.ceil"
    \ ,                      "math.cos"
    \ ,                      "math.deg"
    \ ,                      "math.exp"
    \ ,                      "math.floor"
    \ ,                      "math.fmod"
    \ ,                      "math.huge"
    \ ,                      "math.log"
    \ ,                      "math.max"
    \ ,                      "math.maxinteger"
    \ ,                      "math.min"
    \ ,                      "math.mininteger"
    \ ,                      "math.modf"
    \ ,                      "math.pi"
    \ ,                      "math.rad"
    \ ,                      "math.random"
    \ ,                      "math.randomseed"
    \ ,                      "math.sin"
    \ ,                      "math.sqrt"
    \ ,                      "math.tan"
    \ ,                      "math.tointeger"
    \ ,                      "math.type"
    \ ,                      "math.ult"
    \ ,                      "next"
    \ ,                      "os"
    \ ,                      "os.clock"
    \ ,                      "os.date"
    \ ,                      "os.difftime"
    \ ,                      "os.execute"
    \ ,                      "os.exit"
    \ ,                      "os.getenv"
    \ ,                      "os.remove"
    \ ,                      "os.rename"
    \ ,                      "os.setlocale"
    \ ,                      "os.time"
    \ ,                      "os.tmpname"
    \ ,                      "package"
    \ ,                      "package.config"
    \ ,                      "package.cpath"
    \ ,                      "package.loaded"
    \ ,                      "package.loadlib"
    \ ,                      "package.path"
    \ ,                      "package.preload"
    \ ,                      "package.searchers"
    \ ,                      "package.searchpath"
    \ ,                      "pairs"
    \ ,                      "pcall"
    \ ,                      "print"
    \ ,                      "rawequal"
    \ ,                      "rawget"
    \ ,                      "rawlen"
    \ ,                      "rawset"
    \ ,                      "require"
    \ ,                      "select"
    \ ,                      "setmetatable"
    \ ,                      "string"
    \ ,                      "string.byte"
    \ ,                      "string.char"
    \ ,                      "string.dump"
    \ ,                      "string.find"
    \ ,                      "string.format"
    \ ,                      "string.gmatch"
    \ ,                      "string.gsub"
    \ ,                      "string.len"
    \ ,                      "string.lower"
    \ ,                      "string.match"
    \ ,                      "string.pack"
    \ ,                      "string.packsize"
    \ ,                      "string.rep"
    \ ,                      "string.reverse"
    \ ,                      "string.sub"
    \ ,                      "string.unpack"
    \ ,                      "string.upper"
    \ ,                      "table"
    \ ,                      "table.concat"
    \ ,                      "table.insert"
    \ ,                      "table.move"
    \ ,                      "table.pack"
    \ ,                      "table.remove"
    \ ,                      "table.sort"
    \ ,                      "table.unpack"
    \ ,                      "tonumber"
    \ ,                      "tostring"
    \ ,                      "type"
    \ ,                      "unpack"
    \ ,                      "utf8"
    \ ,                      "utf8.char"
    \ ,                      "utf8.charpattern"
    \ ,                      "utf8.codepoint"
    \ ,                      "utf8.codes"
    \ ,                      "utf8.len"
    \ ,                      "utf8.offset"
    \ ,                      "xpcall"]
    \ }
    " \ , 'fennelVariable': []

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

syntax match fennelStringEscape "\v\\%([\\btnfrz"]|u\x{4}|[0-3]\o{2}|\o{1,2})" contained

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

syntax match fennelSymbol "\v%([a-zA-Z!$&*_+=|<.>?-]|[^\x00-\x7F])+%(:?%([a-zA-Z0-9!#$%&*_+=|'<.>/?-]|[^\x00-\x7F]))*[:]@<!"

let s:radix_chars = "0123456789abcdefghijklmnopqrstuvwxyz"
for s:radix in range(2, 36)
  execute 'syntax match fennelNumber "\v\c<[-+]?' . s:radix . 'r[' . strpart(s:radix_chars, 0, s:radix) . ']+>"'
endfor
unlet! s:radix_chars s:radix

syntax match fennelNumber "\v<[-+]?%(0\o*|0x\x+|[1-9]\d*)N?>"
syntax match fennelNumber "\v<[-+]?%(0|[1-9]\d*|%(0|[1-9]\d*)\.\d*)%(M|[eE][-+]?\d+)?>"
syntax match fennelNumber "\v<[-+]?%(0|[1-9]\d*)/%(0|[1-9]\d*)>"

syntax match fennelAuxSyntax /\$\([1-9]\|\.\.\.\)\?/
syntax keyword fennelAuxSyntax ... _ &
" Pattern prefix `?foo` or guard syntax `(matched ? (pred matched)` used in `match`
syntax match fennelAuxSyntax /\<?\ze\([^[:space:]\n"'(),;@\[\]\\`{}~]\|\>\)/ contained containedin=fennelSymbol

syntax match fennelQuote "'"
syntax match fennelQuote "`"
syntax match fennelUnquote ","
syntax match fennelMeta "\^"
syntax match fennelDeref "@"
syntax match fennelDispatch "\v#[\^'=<_]?"

syntax keyword fennelCommentTodo contained FIXME XXX TODO FIXME: XXX: TODO:

syntax match fennelComment ";.*$" contains=fennelCommentTodo,@Spell
syntax match fennelComment "#!.*$"

" -*- TOP CLUSTER -*-
" syntax cluster fennelTop contains=@Spell,fennelAnonArg,fennelBoolean,fennelCharacter,fennelComment,fennelCond,fennelConstant,fennelDefineVar,fennelDefineFun,fennelDeref,fennelDispatch,fennelError,fennelException,fennelFunc,fennelComparator,fennelKeyword,fennelLuaKeyword,fennelMacro,fennelMap,fennelMeta,fennelNumber,fennelQuote,fennelRepeat,fennelSexp,fennelSpecial,fennelString,fennelSymbol,fennelUnquote,fennelAuxSyntax,fennelVariable,fennelVector
syntax cluster fennelTop contains=@Spell,fennelAnonArg,fennelBoolean,fennelCharacter,fennelComment,fennelCond,fennelConstant,fennelDefineVar,fennelDefineFun,fennelDeref,fennelDispatch,fennelError,fennelException,fennelFunc,fennelComparator,fennelKeyword,fennelLuaKeyword,fennelMacro,fennelMap,fennelMeta,fennelNumber,fennelQuote,fennelRepeat,fennelSexp,fennelSpecial,fennelString,fennelSymbol,fennelUnquote,fennelAuxSyntax,fennelVector

syntax region fennelSexp   matchgroup=fennelParen start="("  end=")" contains=@fennelTop
syntax region fennelVector matchgroup=fennelParen start="\[" end="]" contains=@fennelTop
syntax region fennelMap    matchgroup=fennelParen start="{"  end="}" contains=@fennelTop

" Highlight superfluous closing parens, brackets and braces.
syntax match fennelError "]\|}\|)"

syntax sync fromstart

highlight default link fennelConstant                  Boolean
highlight default link fennelBoolean                   Boolean
highlight default link fennelCharacter                 Character
highlight default link fennelKeyword                   Structure
highlight default link fennelNumber                    Number
highlight default link fennelString                    String
highlight default link fennelStringDelimiter           StorageClass
highlight default link fennelStringEscape              Character

highlight default link fennelVariable                  Identifier
highlight default link fennelCond                      Conditional
highlight default link fennelDefineFun                 Keyword
highlight default link fennelDefineVar                 Statement
highlight default link fennelException                 Exception
highlight default link fennelFunc                      Statement
highlight default link fennelComparator                Operator
highlight default link fennelMacro                     Special
highlight default link fennelRepeat                    Repeat

highlight default link fennelSpecial                   Macro
highlight default link fennelAuxSyntax                 Macro
highlight default link fennelQuote                     SpecialChar
highlight default link fennelUnquote                   SpecialChar
highlight default link fennelMeta                      SpecialChar
highlight default link fennelDeref                     SpecialChar
highlight default link fennelDispatch                  SpecialChar

highlight default link fennelLuaKeyword                Function

highlight default link fennelComment                   Comment
highlight default link fennelCommentTodo               PreProc

highlight default link fennelError                     Error

highlight default link fennelParen                     Delimiter

let b:current_syntax = "fennel"

let &cpo = s:cpo_save
unlet! s:cpo_save

" vim: set filetype=vim foldmethod=marker foldlevel=0 nowrap:
