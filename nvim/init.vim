"
" My init.vim
" Author: Kenta Yamada
" Repo: https://github.com/KentaYamada/neovim-dotfiles
"

" == color scheme ===
set termguicolors
set background=dark
" colorscheme gruvbox
" colorscheme codedark
colorscheme NeoSolarized

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
source $HOME/.config/nvim/config/auto_cmd.rc.vim

"================
" Plugin manager
"================
source $HOME/.config/nvim/plugin/dein.rc.vim
syntax on
