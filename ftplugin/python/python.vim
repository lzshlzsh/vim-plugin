"""
"""
function! Py_add_header() abort
    call append(0, "#!/usr/bin/env python")
    call append(1, "#-*- coding: utf-8 -*-")
    call append(2, "#date " . strftime('%Y-%m-%d %T', localtime()))
    call append(3, "#author sammieliu,sammieliu@tencent.com")
    call append(4, "#copyright Copyright 1998 - 2017 Tencent. All Rights Reserved.")
endfunction

if g:lzs#use_python_plugin
	noremap <LocalLeader>cfdh :call Py_add_header()<CR>
endif
