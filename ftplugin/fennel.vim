if exists("b:did_ftplugin")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

setlocal iskeyword=@,33,35-38,42-43,45-58,60-63,94-95,124
" 32: SPACE
" 34: "
" 39: '
" 40,41: ()
" 44: ,
" 58: :
" NOTE: `:` is not permitted in identifiers but...
"   1. required to highlight special form `:`,
"   2. required to highlight method call `(obj:method ...)`, and
"   3. convenient when for example searching a keyword by `*`.
" 59: ;
" 64: @
" 65-90: A-Z (included in @)
" 91,93: []
" 92: \
" 96: `
" 97-122: a-z (included in @)
" 123,125: {}
" 126: ~
" 127: DEL

" There will be false positives, but this is better than missing the whole set
" of user-defined def* definitions.
setlocal define=\\v[(/]def(ault)@!\\S*

" Lisp comments are routinely nested (e.g. ;;; SECTION HEADING)
setlocal comments=n:;
setlocal commentstring=;\ %s

" Specially indented symbols
"
" lispwords are indented in the fn style when they:
"
"   * Define vars and anonymous functions
"   * Create new lexical scopes or scopes with altered environments
"   * Create conditional branches from a predicate function or value
"
" The arglists for these functions are generally in the form of [x & body];
" Functions that accept a flat list of forms do not treat the first argument
" specially and hence are not indented specially.
"
" -*- LISPWORDS -*-
setlocal lispwords=do,
setlocal lispwords+=doto,
setlocal lispwords+=each,
setlocal lispwords+=fn,
setlocal lispwords+=for,
setlocal lispwords+=global,
setlocal lispwords+=if,
setlocal lispwords+=lambda,
setlocal lispwords+=let,
setlocal lispwords+=local,
setlocal lispwords+=macro,
setlocal lispwords+=match,
setlocal lispwords+=partial,
setlocal lispwords+=var,
setlocal lispwords+=when,
setlocal lispwords+=while,
setlocal lispwords+=λ

let b:undo_ftplugin = 'setlocal iskeyword< define< formatoptions< comments< commentstring< lispwords<'

let b:did_ftplugin = 1

let &cpo = s:cpo_save
unlet! s:cpo_save

" vim: set filetype=vim foldmethod=marker foldlevel=0 nowrap:
