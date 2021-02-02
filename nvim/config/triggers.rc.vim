"
" My auto commands
" Author: Kenta Yamada
" Repo: https://github.com/KentaYamada/neovim-dotfiles
"

"==========
" init.vim
"==========
augroup initVimCmd
    autocmd!
    autocmd BufWritePost init.vim source $MYVIMRC
augroup END

"============
" TypeScript
"============
augroup tsCmd
    autocmd!
    autocmd BufNewFile,BufRead *.ts setfiletype typescript
augroup END

"=========
" CakePHP
"=========
augroup cakePhpCmd
    autocmd!
    autocmd BufNewFile,BufRead *.ctp setfiletype php
augroup END

"=====
" toml
"=====
augroup tomlCmd
    autocmd!
    autocmd BufNewFile,BufRead *.toml setfiletype conf
augroup END

"================
" template files
"================
augroup templates
    autocmd!
    autocmd BufNewFile *.vue 0r $HOME/.config/nvim/templates/skeleton.vue
augroup END

"=============
" local vimrc
"=============
augroup localVimrcCmd
    autocmd!
    autocmd BufNewFile,BufReadPost * call s:vimrc_local(expand('<afile>:p:h'))
    autocmd BufReadPre .vimrc.local setfiletype=vim
augroup END
