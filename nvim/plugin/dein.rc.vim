let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/dein.vim'

if &compatible
  set nocompatible
endif

if &runtimepath !~# '/dein.vim'
    if !isdirectory(s:dein_repo_dir)
        " clone repo.
        execute '!git clone git@github.com:Shougo/dein.vim.git' s:dein_repo_dir
    endif

    execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

let g:dein#enable_notification = 1

if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)
    call dein#load_toml('~/.config/nvim/plugin/plugins.toml', {'lazy': 0})
    call dein#load_toml('~/.config/nvim/plugin/plugins-lazy.toml', {'lazy': 1})
    call dein#end()
    call dein#save_state()
endif

" cleanup plugins
call map(dein#check_clean(), "delete(v:val, 'rf')")

if dein#check_install()
    call dein#install()
endif

" Key map
" Dein update
nnoremap <leader>du :call dein#update() <CR>

set hidden
filetype plugin indent on
syntax enable
