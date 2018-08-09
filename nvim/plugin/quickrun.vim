"
" vim-quickrun config
" Author: Kenta Yamada
"
let g:quickrun_config = get(g:, 'quickrun_config', {})
let g:quickrun_config._ = {
    \ 'runner': 'vimproc',
    \ 'runner/vimproc/updatetime': 40,
    \ 'outputter': 'error',
    \ 'outputter/error/success': 'buffer',
    \ 'outputter/error/error': 'quickfix',
    \ 'hook/close_quickfix/enable_exit': 1
\ }
