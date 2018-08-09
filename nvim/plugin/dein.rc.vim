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

    " todo: nvimより親のパスを環境変数化
    call dein#load_toml('~/.config/nvim/plugin/plugins.toml', {'lazy': 0})
    call dein#load_toml('~/.config/nvim/plugin/plugins-lazy.toml', {'lazy': 1})
    " call dein#load_toml('~/git/neovim-dotfiles/nvim/plugin/plugins.toml', {'lazy': 0})
    " call dein#load_toml('~/git/neovim-dotfiles/nvim/plugin/plugins-lazy.toml', {'lazy': 1})

    call dein#end()
    call dein#save_state()
endif

if dein#check_install()
    call dein#install()
endif

filetype plugin indent on
syntax enable
