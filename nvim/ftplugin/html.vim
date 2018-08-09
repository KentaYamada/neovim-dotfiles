if exists('b:did_ftplugin_html')
    finish
endif

let b:did_ftplugin_html = 1

if has('mac')
  nnoremap <F5> :!open /Applications/Google\ Chrome.app %<CR>
endif
