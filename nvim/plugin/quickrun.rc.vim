"
" vim-quickrun config
" Author: Kenta Yamada
" See: https://github.com/thinca/vim-quickrun/blob/master/doc/quickrun.jax
"
let g:quickrun_config = get(g:, 'quickrun_config', {})
let g:quickrun_config._ = {
    \ 'runner': 'vimproc',
    \ 'runner/vimproc/updatetime': 40,
    \ 'outputter': 'error',
    \ 'outputter/error/success': 'quickfix',
    \ 'outputter/error/error': 'quickfix',
    \ 'hook/close_quickfix/enable_exit': 1
\ }

" Python3 unittesting
let g:quickrun_config['py3_ut'] = {
    \ 'command': 'python3',
    \ 'cmdopt': '-B'
\ }

" Key mapping
nnoremap <space>r :QuickRun<CR>

" Unit test自動実行
augroup QuickRunUnitTest
    autocmd!
    autocmd BufWritePost *test.py :QuickRun py3_ut
augroup END
