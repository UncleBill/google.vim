" Author: github.com/unclebill
" Last Update: 2014-01-25
" Usage: see readme.md

if !exists('g:google_search_hl')
  let g:google_search_hl = 'en'
endif

function! s:google_search(...)
    if a:0 == 0
        let kw = expand('<cword>')
    else
        let kw = join(a:000, '%20')
    endif
    call system("google-chrome http://www.google.com/search?q=" . kw . '&hl=' . g:google_search_hl)
endfunction


command! -nargs=* -complete=customlist,google#query_suggeestion Google call s:google_search(<f-args>)
command! -nargs=* -complete=customlist,google#query_suggeestion Google call s:google_search(<f-args>)
