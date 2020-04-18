"
" My auto commands
" Author: Kenta Yamada
" Repo: https://github.com/KentaYamada/neovim-dotfiles
"

" .vimrc.localを探して読み込む
function! s:vimrc_local(loc)
    let files = findfile('.vimrc.local', escape(a:loc, ' ') . ';', -1)
    for i in reverse(filter(files, 'filereadable(v:val)'))
        source `=i`
    endfor
endfunction

"==========
" init.vim
"==========
augroup initVimCmd
    autocmd!
    autocmd BufWritePost init.vim source $MYVIMRC
augroup END

"=============
" local vimrc
"=============
augroup localVimrcCmd
    autocmd!
    autocmd BufNewFile,BufReadPost * call s:vimrc_local(expand('<afile>:p:h'))
    autocmd BufReadPre .vimrc.local setfiletype=vim
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
