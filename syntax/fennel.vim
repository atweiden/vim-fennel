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
    \ , 'fennelConstant': ["nil"]
    \ , 'fennelComparator': [">"
    \ ,                      "<"
    \ ,                      ">="
    \ ,                      "<="
    \ ,                      "="
    \ ,                      "=="
    \ ,                      "~="]
    \ , 'fennelComparatorWord': ["and"
    \ ,                          "or"
    \ ,                          "not"
    \ ,                          "not="]
    \ , 'fennelMath': ["+"
    \ ,                "^"
    \ ,                "-"
    \ ,                "*"
    \ ,                "%"
    \ ,                "/"
    \ ,                "//"]
    \ , 'fennelBitwise': ["band"
    \ ,                   "bnot"
    \ ,                   "bor"
    \ ,                   "bxor"
    \ ,                   "lshift"
    \ ,                   "rshift"]
    \ , 'fennelCond': ["if"
    \ ,                "match"
    \ ,                "when"]
    \ , 'fennelRepeat': ["each"
    \ ,                  "while"
    \ ,                  "for"]
    \ , 'fennelDefMonoForm': ["global"
    \ ,                       "local"
    \ ,                       "var"
    \ ,                       "macros"]
    \ , 'fennelDefPolyForm': ["fn"
    \ ,                       "lambda"
    \ ,                       "λ"]
    \ , 'fennelDefPolyFormVoid': ["macro"
    \ ,                           "let"
    \ ,                           "with-open"]
    \ , 'fennelFunction': ["."
    \ ,                    "set"
    \ ,                    "set-forcibly!"
    \ ,                    "tset"
    \ ,                    "list"
    \ ,                    "length"
    \ ,                    "list?"
    \ ,                    "sym?"
    \ ,                    "in-scope?"
    \ ,                    "table?"
    \ ,                    "sequence?"
    \ ,                    "varg?"
    \ ,                    "multi-sym?"
    \ ,                    "quote"
    \ ,                    "unquote"
    \ ,                    "import-macros"
    \ ,                    "require-macros"]
    \ , 'fennelDummyVariable': ["_"]
    \ , 'fennelVariadic': ["..."]
    \ , 'fennelCaptureRemaining': ["&"]
    \ , 'fennelConcat': [".."]
    \ , 'fennelLength': ["#"]
    \ , 'fennelPunningLookup': [":"]
    \ , 'fennelSpecial': ["pairs"
    \ ,                   "ipairs"
    \ ,                   "values"
    \ ,                   "partial"
    \ ,                   "hashfn"
    \ ,                   "pick-args"
    \ ,                   "pick-values"]
    \ , 'fennelMagic': ["->"
    \ ,                 "->>"
    \ ,                 "-?>"
    \ ,                 "-?>>"
    \ ,                 "do"
    \ ,                 "doto"
    \ ,                 "next"]
    \ , 'fennelVeryMagic': ["macrodebug"
    \ ,                     "macroexpand"
    \ ,                     "include"
    \ ,                     "lua"
    \ ,                     "eval-compiler"]
    \ , 'fennelSymbolOp': ["gensym"
    \ ,                    "sym"]
    \ , 'fennelDoc': ["comment"
    \ ,               "doc"]
    \ , 'fennelException': ["error"]
    \ , 'fennelLuaGlobal': ["_G"
    \ ,                     "_VERSION"
    \ ,                     "package"
    \ ,                     "package.config"
    \ ,                     "package.cpath"
    \ ,                     "package.loaded"
    \ ,                     "package.loadlib"
    \ ,                     "package.path"
    \ ,                     "package.preload"
    \ ,                     "package.searchers"
    \ ,                     "package.searchpath"]
    \ , 'fennelLuaCompile': ["dofile"
    \ ,                      "load"
    \ ,                      "loadfile"
    \ ,                      "require"]
    \ , 'fennelLuaKeyword': ["assert"
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
    \ ,                      "pcall"
    \ ,                      "print"
    \ ,                      "rawequal"
    \ ,                      "rawget"
    \ ,                      "rawlen"
    \ ,                      "rawset"
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

let s:fennel_conjure_syntax_keywords = {
    \   'fennelConjureKeyword': ["def"
    \ ,                          "def-"
    \ ,                          "defn"
    \ ,                          "defn-"
    \ ,                          "defonce"
    \ ,                          "defonce-"
    \ ,                          "deftest"
    \ ,                          "module"]
    \ }

let s:fennel_lume_syntax_keywords = {
    \   'fennelLumeKeyword': ["lume"
    \ ,                       "lume.all"
    \ ,                       "lume.angle"
    \ ,                       "lume.any"
    \ ,                       "lume.array"
    \ ,                       "lume.call"
    \ ,                       "lume.chain"
    \ ,                       "lume.clamp"
    \ ,                       "lume.clear"
    \ ,                       "lume.clone"
    \ ,                       "lume.color"
    \ ,                       "lume.combine"
    \ ,                       "lume.concat"
    \ ,                       "lume.count"
    \ ,                       "lume.deserialize"
    \ ,                       "lume.distance"
    \ ,                       "lume.dostring"
    \ ,                       "lume.each"
    \ ,                       "lume.extend"
    \ ,                       "lume.filter"
    \ ,                       "lume.find"
    \ ,                       "lume.first"
    \ ,                       "lume.fn"
    \ ,                       "lume.format"
    \ ,                       "lume.hotswap"
    \ ,                       "lume.invert"
    \ ,                       "lume.isarray"
    \ ,                       "lume.keys"
    \ ,                       "lume.lambda"
    \ ,                       "lume.last"
    \ ,                       "lume.lerp"
    \ ,                       "lume.map"
    \ ,                       "lume.match"
    \ ,                       "lume.memoize"
    \ ,                       "lume.merge"
    \ ,                       "lume.once"
    \ ,                       "lume.pingpong"
    \ ,                       "lume.push"
    \ ,                       "lume.random"
    \ ,                       "lume.randomchoice"
    \ ,                       "lume.reduce"
    \ ,                       "lume.reject"
    \ ,                       "lume.remove"
    \ ,                       "lume.ripairs"
    \ ,                       "lume.round"
    \ ,                       "lume.serialize"
    \ ,                       "lume.shuffle"
    \ ,                       "lume.sign"
    \ ,                       "lume.slice"
    \ ,                       "lume.smooth"
    \ ,                       "lume.sort"
    \ ,                       "lume.split"
    \ ,                       "lume.time"
    \ ,                       "lume.trace"
    \ ,                       "lume.trim"
    \ ,                       "lume.unique"
    \ ,                       "lume.uuid"
    \ ,                       "lume.vector"
    \ ,                       "lume.weightedchoice"
    \ ,                       "lume.wordwrap"]
    \ }

function! s:syntax_keyword(dict)
  for key in keys(a:dict)
    execute 'syntax keyword' key join(a:dict[key], ' ')
  endfor
endfunction

call s:syntax_keyword(s:fennel_syntax_keywords)

if exists('g:fennel_syntax_keywords')
  call s:syntax_keyword(g:fennel_syntax_keywords)
endif

if exists('b:fennel_syntax_keywords')
  call s:syntax_keyword(b:fennel_syntax_keywords)
endif

" <identifier> -> <initial> <subsequent> *
" where <initial>    -> [^#:0-9[:space:]\n"'(),;@\[\]\\`{}~]
"       <subsequent> -> [^[:space:]\n"'(),;@\[\]\\`{}~]
syntax match fennelSymbol /[^#:0-9[:space:]\n"'(),;@\[\]\\`{}~][^[:space:]\n"'(),;@\[\]\\`{}~]*/

" <keyword> -> : <subsequent> +
" fennel accepts keywords such as :::
syntax match fennelKeywordLabel /:[^[:space:]\n"'(),;@\[\]\\`{}~]\+/ contained containedin=fennelKeyword
syntax region fennelKeyword matchgroup=fennelKeywordDelimiter start=/\v<:/ end=/\v\ze[[:space:]\n"'(),;@\[\]\\`{}~]+/ contains=fennelKeywordLabel display

syntax match fennelCommentTodo /\(FIXME\|NOTE\|TBD\|TODO\|XXX\):\?/ contained
syntax match fennelCommentTitleLeader ';\s\+'ms=s+1 contained
syntax match fennelCommentTitle ';\s*\u\w*\(\s\+\u\w*\)*:'hs=s+1 contained contains=fennelCommentTitleLeader,fennelCommentTodo,@Spell
syntax region fennelCommentString start='\s\+"'ms=e end='"' contained oneline
syntax region fennelComment excludenl start=/;/ end=/$/ contains=fennelCommentString,fennelCommentTodo,@Spell
syntax match fennelCommentLine +^[ \t]*;.*$+ contains=fennelCommentString,fennelCommentTitle,fennelCommentTodo,@Spell
syntax match fennelShebang /\%^#![\/ ].*$/

syntax region fennelString matchgroup=fennelStringDelimiter start=/"/ skip=/\\\\\|\\"/ end=/"/ contains=@fennelEscapeChars,@Spell
syntax cluster fennelEscapeChars contains=fennelEscapeCharCode
syntax cluster fennelEscapeChars add=fennelEscapeCharLiteral
syntax cluster fennelEscapeChars add=fennelEscapeCharMnemonic
syntax cluster fennelEscapeChars add=fennelEscapeCharMnemonicZ
syntax match fennelEscapeCharCode /\\\%(\%(\%([01]\)\?[0-9]\)\?[0-9]\|2[0-4][0-9]\|25[0-5]\)/ contained
syntax match fennelEscapeCharCode '\\x[[:xdigit:]]\{2}' contained
syntax match fennelEscapeCharLiteral /\\[\\"']/ contained
syntax match fennelEscapeCharMnemonic /\\[abfnrtv]/ contained
syntax match fennelEscapeCharMnemonicZ /\\z/ contained

let s:radix_chars = "0123456789abcdefghijklmnopqrstuvwxyz"
for s:radix in range(2, 36)
  execute 'syntax match fennelNumber "\v\c<[-+]?' . s:radix . 'r[' . strpart(s:radix_chars, 0, s:radix) . ']+>"'
endfor
unlet! s:radix_chars s:radix

syntax match fennelNumber "\v<[-+]?%(0\o*|0x\x+|[1-9]\d*)N?>"
syntax match fennelNumber "\v<[-+]?%(0|[1-9]\d*|%(0|[1-9]\d*)\.\d*)%(M|[eE][-+]?\d+)?>"
syntax match fennelNumber "\v<[-+]?%(0|[1-9]\d*)/%(0|[1-9]\d*)>"

syntax match fennelQuote "'"
syntax match fennelQuote "`"
syntax match fennelUnquote ","

" Arity-checked function parameter optionality, e.g. `(λ f [foo ?bar])`
" and pattern matching guard syntax, e.g. `(matched ? (pred matched)`
syntax match fennelGuardOrMarker /\<?\ze\([^[:space:]\n"'(),;@\[\]\\`{}~]\|\>\)/ contained containedin=fennelSymbol

" Hash function implicitly named arguments
syntax match fennelHashFnArg /\$\([1-9]\|\.\.\.\)\?/

" -*- TOP CLUSTER -*-
syntax cluster fennelTop contains=@Spell
syntax cluster fennelTop add=fennelAnonArg
syntax cluster fennelTop add=fennelBitwise
syntax cluster fennelTop add=fennelBoolean
syntax cluster fennelTop add=fennelCaptureRemaining
syntax cluster fennelTop add=fennelCharacter
syntax cluster fennelTop add=fennelComment
syntax cluster fennelTop add=fennelCommentLine
syntax cluster fennelTop add=fennelComparator
syntax cluster fennelTop add=fennelComparatorWord
syntax cluster fennelTop add=fennelConcat
syntax cluster fennelTop add=fennelCond
syntax cluster fennelTop add=fennelConstant
syntax cluster fennelTop add=fennelDefMonoForm
syntax cluster fennelTop add=fennelDefPolyForm
syntax cluster fennelTop add=fennelDefPolyFormVoid
syntax cluster fennelTop add=fennelDoc
syntax cluster fennelTop add=fennelDummyVariable
syntax cluster fennelTop add=fennelError
syntax cluster fennelTop add=fennelException
syntax cluster fennelTop add=fennelFunction
syntax cluster fennelTop add=fennelGuardOrMarker
syntax cluster fennelTop add=fennelHashFnArg
syntax cluster fennelTop add=fennelKeyword
syntax cluster fennelTop add=fennelLength
syntax cluster fennelTop add=fennelLuaCompile
syntax cluster fennelTop add=fennelLuaGlobal
syntax cluster fennelTop add=fennelLuaKeyword
syntax cluster fennelTop add=fennelMagic
syntax cluster fennelTop add=fennelMap
syntax cluster fennelTop add=fennelMath
syntax cluster fennelTop add=fennelNumber
syntax cluster fennelTop add=fennelPunningLookup
syntax cluster fennelTop add=fennelQuote
syntax cluster fennelTop add=fennelRepeat
syntax cluster fennelTop add=fennelSexp
syntax cluster fennelTop add=fennelSpecial
syntax cluster fennelTop add=fennelString
syntax cluster fennelTop add=fennelSymbol
syntax cluster fennelTop add=fennelSymbolOp
syntax cluster fennelTop add=fennelUnquote
"syntax cluster fennelTop add=fennelVariable
syntax cluster fennelTop add=fennelVariadic
syntax cluster fennelTop add=fennelVector
syntax cluster fennelTop add=fennelVeryMagic

syntax region fennelSexp   matchgroup=fennelParen start="("  end=")" contains=@fennelTop
syntax region fennelVector matchgroup=fennelParen start="\[" end="]" contains=@fennelTop
syntax region fennelMap    matchgroup=fennelParen start="{"  end="}" contains=@fennelTop

" Highlight superfluous closing parens, brackets and braces.
syntax match fennelError "]\|}\|)"

syntax sync fromstart

highlight default link fennelBitwise                   Function
highlight default link fennelBoolean                   Boolean
highlight default link fennelCaptureRemaining          Macro
highlight default link fennelCharacter                 Character
highlight default link fennelComment                   Comment
highlight default link fennelCommentLine               Comment
highlight default link fennelCommentString             String
highlight default link fennelCommentTitle              PreProc
highlight default link fennelCommentTodo               Todo
highlight default link fennelComparator                Operator
highlight default link fennelComparatorWord            Function
highlight default link fennelConcat                    Operator
highlight default link fennelCond                      Conditional
highlight default link fennelConstant                  Boolean
highlight default link fennelDefMonoForm               Delimiter
highlight default link fennelDefPolyForm               Statement
highlight default link fennelDefPolyFormVoid           Statement
highlight default link fennelDoc                       Delimiter
highlight default link fennelDummyVariable             Comment
highlight default link fennelError                     Error
highlight default link fennelEscapeCharCode            Character
highlight default link fennelEscapeCharLiteral         SpecialChar
highlight default link fennelEscapeCharMnemonic        SpecialChar
highlight default link fennelEscapeCharMnemonicZ       Comment
highlight default link fennelException                 Exception
highlight default link fennelFunction                  Statement
highlight default link fennelGuardOrMarker             Macro
highlight default link fennelHashFnArg                 Identifier
highlight default link fennelKeyword                   String
highlight default link fennelKeywordDelimiter          Structure
highlight default link fennelLength                    Operator
highlight default link fennelLuaCompile                Statement
highlight default link fennelLuaGlobal                 Constant
highlight default link fennelLuaKeyword                Function
highlight default link fennelMagic                     Special
highlight default link fennelMath                      Operator
highlight default link fennelNumber                    Number
highlight default link fennelParen                     Delimiter
highlight default link fennelPunningLookup             Statement
highlight default link fennelQuote                     SpecialChar
highlight default link fennelRepeat                    Repeat
highlight default link fennelShebang                   Comment
highlight default link fennelSpecial                   Macro
highlight default link fennelString                    String
highlight default link fennelStringDelimiter           Delimiter
highlight default link fennelSymbolOp                  Type
highlight default link fennelUnquote                   SpecialChar
highlight default link fennelVariable                  Identifier
highlight default link fennelVariadic                  Delimiter
highlight default link fennelVeryMagic                 PreProc

if exists('g:fennel_highlight_conjure')
  call s:syntax_keyword(s:fennel_conjure_syntax_keywords)
  syntax cluster fennelTop add=fennelConjureKeyword
  highlight default link fennelConjureKeyword          Keyword
endif

if exists('g:fennel_highlight_lume')
  call s:syntax_keyword(s:fennel_lume_syntax_keywords)
  syntax cluster fennelTop add=fennelLumeKeyword
  highlight default link fennelLumeKeyword             Function
endif

delfunction s:syntax_keyword

let b:current_syntax = "fennel"

let &cpo = s:cpo_save
unlet! s:cpo_save

" vim: set filetype=vim foldmethod=marker foldlevel=0 nowrap:
