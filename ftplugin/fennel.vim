if exists("b:did_ftplugin")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

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

let b:undo_ftplugin = 'setlocal'
let b:undo_ftplugin += ' comments<'
let b:undo_ftplugin += ' commentstring<'
let b:undo_ftplugin += ' define<'
let b:undo_ftplugin += ' formatoptions<'
let b:undo_ftplugin += ' lispwords<'

let b:did_ftplugin = 1

let &cpo = s:cpo_save
unlet! s:cpo_save

" vim: set filetype=vim foldmethod=marker foldlevel=0 nowrap:
