"""
"""

function! lzs#py_add_header()
    call setline(1, "#!/usr/bin/env python")
    call append(1, "# -*- coding: utf-8 -*-")
    call append(2, "# Pw @ " . strftime('%Y-%m-%d %T', localtime()))
    normal G
    normal o
    normal o
endf

if g:lzs#use_python_plugin
	noremap <LocalLeader>cfdh :call lzs#py_add_header()<CR>
