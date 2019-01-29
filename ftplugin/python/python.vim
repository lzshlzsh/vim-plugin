"""
"""
function! Py_add_header() abort
    call append(0, "#!/usr/bin/env python")
    call append(1, "#-*- coding: utf-8 -*-")
    call append(2, "#date " . strftime('%Y-%m-%d %T', localtime()))
    call append(3, "#author lzshlzsh,lzshlzsh@tencent.com")
    call append(4, "#copyright Copyright 1998 - 2017 Tencent. All Rights Reserved.")
endfunction

function! Py_comment_function() abort
  let pos1  = line(".")
  call append(pos1+0, "  \"\"\"")
  call append(pos1+1, "    Funtion:")
  call append(pos1+2, "    Args:")
  call append(pos1+3, "    Returns:")
  call append(pos1+4, "  \"\"\"")
endfunction

if g:lzs#use_python_plugin
	noremap <LocalLeader>cfdh :call Py_add_header()<CR>
	noremap <LocalLeader>cfu :call Py_comment_function()<CR>
endif
