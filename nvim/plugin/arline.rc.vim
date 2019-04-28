"
" ariline.rc.vim
" My ariline.vim config
" Author: Kenta Yamada
" My Repo: https://github.com/KentaYamada/neovim-dotfiles
" See: https://github.com/vim-airline/vim-airline
"

" タブの表示
let g:airline#extensions#tabline#enabled = 1

" テーマの設定
" See: https://github.com/vim-airline/vim-airline/wiki/Screenshots
let g:airline_theme = 'angr'

" ale linterの表示
let g:airline#extensions#ale#enabled = 1
