let s:cpo_save = &cpo
set cpo&vim

function! fennel#config#HighlightConjure() abort
  return get(g:, 'fennel_highlight_conjure', 0)
endfunction

function! fennel#config#HighlightLume() abort
  return get(g:, 'fennel_highlight_lume', 0)
endfunction

let &cpo = s:cpo_save
unlet! s:cpo_save

" vim: set filetype=vim foldmethod=marker foldlevel=0 nowrap:
