"
" My ariline.vim config
"
" Author: Kenta Yamada
" My Repo: https://github.com/KentaYamada/neovim-dotfiles
" See: https://github.com/vim-airline/vim-airline
"

"-------------
" Tab configs
"-------------
" タブの表示
let g:airline#extensions#tabline#enabled = 1
" タブのファイル名の表示
let g:airline#extensions#tabline#formatter = 'unique_tail'
" [タブが1つの場合] タブラインの表示機能
let g:airline#extensions#tabline#show_buffers = 0
" タブに表示する名前
let g:airline#extensions#tabline#fnamemod = ':t'
" 左のタブから連番にする
let g:airline#extensions#tabline#tab_nr_type = 1

"------------------------------------------------------------------
" Theme configs
" See: https://github.com/vim-airline/vim-airline/wiki/Screenshots
"------------------------------------------------------------------
" colorscheme "gruvbox" を使う
" let g:airline_theme = 'gruvbox'
" let g:airline_theme = 'codedark'
let g:airline_theme = 'solarized'
let g:ariline_solarized_bg = 'dark'

" ale linterの表示
let g:airline#extensions#ale#enabled = 1
" ricty powerline fontを使う
let g:airline_powerline_fonts = 1
