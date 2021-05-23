"====================================
" lightline.rc.vim
"
" lightline.vim plugin configuration
" Author: Kenta Yamada
"====================================
let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ 'active': {
        \ 'left': [
            \ ['mode', 'paste'],
            \ ['gitbranch', 'readonly', 'filename', 'modified']
        \ ]
    \ },
    \ 'component_function': {
        \ 'gitbranch': 'FugitiveHead'
    \ }
\ }
