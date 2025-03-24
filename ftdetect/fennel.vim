autocmd BufNewFile,BufRead *.fnl,*.fnlm call s:set_fennel_filetype()

function! s:set_fennel_filetype() abort
  if &filetype !=# 'fennel'
    setlocal filetype=fennel
  endif
endfunction

" vim: set filetype=vim foldmethod=marker foldlevel=0 nowrap:
