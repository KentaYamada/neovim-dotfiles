"
" My jedi-vim config
" Author: Kenta Yamada
" Repo: https://github.com/KentaYamada/neovim-dotfiles
"

let g:jedi#auto_initialization = 1
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappgins = 1
let g:jedi#completions_enabled = 1
" 関数の引数表示無効(なんかバグるので)
let g:jedi#show_call_signatures = 0
" 補完候補の1番目を選択
let g:jedi#popup_select_first = 0
" Python2 インターフィースの警告を無効にする
let g:jedi#force_py_version = 3

" PyDoc非表示
augroup jediCmd
    autocmd!
    autocmd Filetype python setlocal completeopt-=preview
augroup END
