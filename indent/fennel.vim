if exists("b:did_indent")
  finish
endif

let b:did_indent = 1

let s:save_cpo = &cpo
set cpo&vim

let b:undo_indent = 'setlocal'
let b:undo_indent += ' autoindent<'
let b:undo_indent += ' expandtab<'
let b:undo_indent += ' indentexpr<'
let b:undo_indent += ' indentkeys<'
let b:undo_indent += ' lisp<'
let b:undo_indent += ' shiftwidth<'
let b:undo_indent += ' smartindent<'
let b:undo_indent += ' softtabstop<'

setlocal autoindent
setlocal expandtab
setlocal indentexpr=
setlocal indentkeys=o,O
setlocal lisp
setlocal nosmartindent
setlocal shiftwidth=2
setlocal softtabstop=2

let &cpo = s:save_cpo
unlet! s:save_cpo

" vim: set filetype=vim foldmethod=marker foldlevel=0 nowrap:
