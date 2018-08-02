"
" My jedi-vim config
" Author: Kenta Yamada
" Repo: https://github.com/KentaYamada/neovim-dotfiles
"

let g:jedi#auto_initialization = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappgins = 0
let g:jedi#completions_enabled = 0

" Python2 インターフィースの警告を無効にする
let g:jedi#force_py_version = 3

" PyDoc非表示
augroup jediCmd
    autocmd!
    autocmd Filetype python setlocal completeopt-=preview
augroup END
