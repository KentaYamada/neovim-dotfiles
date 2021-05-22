"
" My init.vim
" Author: Kenta Yamada
" Repo: https://github.com/KentaYamada/neovim-dotfiles
"

"===========
" Variables
"===========
source $HOME/.config/nvim/config/variables.rc.vim

"==============
" Basic config
"==============
source $HOME/.config/nvim/config/basic.rc.vim

"==============
" Key mappings
"==============
source $HOME/.config/nvim/config/mappings.rc.vim

"===============
" Auto commands
"===============
source $HOME/.config/nvim/config/triggers.rc.vim

"================
" Custom commands
"================
source $HOME/.config/nvim/config/commands.rc.vim

"================
" Plugin manager
"================
" source $HOME/.config/nvim/plugin/dein.rc.vim
" syntax on

"==============
" Color scheme
"==============
" source $HOME/.config/nvim/config/color.rc.vim

"================================
" Load .vimrc.local if file exist
"================================
function! s:vimrc_local(loc)
    let files = findfile('.vimrc.local', escape(a:loc, ' ') . ';', -1)
    for i in reverse(filter(files, 'filereadable(v:val)'))
        source `=i`
    endfor
endfunction

augroup localVimrcCmd
    autocmd!
    autocmd BufNewFile,BufReadPost * call s:vimrc_local(expand('<afile>:p:h'))
    autocmd BufReadPre .vimrc.local setfiletype=vim
augroup END
