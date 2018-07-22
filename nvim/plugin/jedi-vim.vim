"
" My jedi-vim config
" Author: Kenta Yamada
" Repo: https://github.com/KentaYamada/neovim-dotfiles
"

let g:jedi#auto_initialization = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappgins = 0
let g:jedi#completions_enabled = 0

" PyDoc非表示
autocmd Filetype python setlocal completeopt-=preview
