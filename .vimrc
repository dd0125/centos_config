" IME ������(Windows�p)
"set imsearch=-1
if ($OSTYPE!='cygwin') && ($OSTYPE!='msys')
    if has("win32")
        inoremap <ESC> <ESC>:set iminsert=0<CR>  " ESC��IME���m����OFF
    endif
endif