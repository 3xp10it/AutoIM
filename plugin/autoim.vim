autocmd InsertLeave * call AutoEN()
autocmd InsertEnter * call AutoWB()
function AutoEN()
    silent !issw com.apple.keylayout.ABC > /dev/null 2>&1
endfunction

function AutoWB()
    silent !issw com.baidu.inputmethod.BaiduIM.wubi > /dev/null 2>&1
endfunction
