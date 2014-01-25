" Author: github.com/unclebill
" Last Update: 2014-01-25
" Usage: see readme.md

function! google#query_suggeestion(...)
    if a:1 == ''
        return ['random']
    endif
    let kw = join(a:000, '%20')
    let ret = []
    let res = webapi#http#get('http://suggestqueries.google.com/complete/search', {"client" : "hp", "q" : a:1, "hjson" : "t", "hl" : g:google_search_hl, "ie" : "UTF8", "oe" : "UTF8" })
	let arr = webapi#json#decode(res.content)
    for m in arr[1]
      call add(ret, m[0])
    endfor
    return ret
endfunction
