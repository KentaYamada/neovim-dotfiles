"
" ariline.rc.vim
" My ariline.vim config
" Author: Kenta Yamada
" My Repo: https://github.com/KentaYamada/neovim-dotfiles
" See: https://github.com/vim-airline/vim-airline
"

" タブの表示
let g:airline#extensions#tabline#enabled = 1
" タブのファイル名の表示
let g:airline#extensions#tabline#formatter = 'unique_tail'

" テーマの設定
" See: https://github.com/vim-airline/vim-airline/wiki/Screenshots
let g:airline_theme = 'badwolf'
" ale linterの表示
let g:airline#extensions#ale#enabled = 1
