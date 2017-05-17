let tmpStr=system("issw")
if tmpStr=~#"command not found"
    silent! !cd /tmp/ && git clone https://github.com/vovkasm/input-source-switcher.git > /dev/null 2>&1
    silent! !cd /tmp/input-source-switcher && mkdir build && cd build && cmake ..  > /dev/null 2>&1 && make > /dev/null 2>&1 && make install > /dev/null 2>&1
    silent! !rm -r /tmp/input-source-switcher
endif

autocmd InsertLeave * call AutoEN()
autocmd InsertEnter * call AutoWB()
function AutoEN()
    if exists("g:AutoIM_enim_id")
        "silent exec '!issw ' . g:AutoIM_enim_id . ' > /dev/null 2>&1'
        system('issw ' . g:AutoIM_enim_id . ' > /dev/null 2>&1')
    else 
        "silent exec '!issw ' . 'com.apple.keylayout.ABC' . ' > /dev/null 2>&1'
        system('issw ' . 'com.apple.keylayout.ABC' . ' > /dev/null 2>&1')
    endif
endfunction

function AutoWB()
    if exists("g:AutoIM_zhim_id")
        "silent exec '!issw ' . g:AutoIM_zhim_id . ' > /dev/null 2>&1'
        system('issw ' . g:AutoIM_zhim_id . ' > /dev/null 2>&1')
    else
        "silent exec '!issw ' . 'com.baidu.inputmethod.BaiduIM.wubi' . ' > /dev/null 2>&1'
        system('issw ' . 'com.baidu.inputmethod.BaiduIM.wubi' . ' > /dev/null 2>&1')
    endif
endfunction


