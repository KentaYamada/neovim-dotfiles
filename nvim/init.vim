" === set options ===
set autoread
set confirm
set nobackup
set noswapfile
set noundofile
set ambiwidth=double
set backspace=indent,eol,start
set list
set listchars=tab:>-,trail:-,nbsp:%
set hlsearch
set ignorecase
set incsearch
set smartcase
set wrapscan
set encoding=utf-8
set fileencoding=utf-8
set fileencodings+=utf-8,euc-jp,cp932,iso-2022-jp
set autoindent
set expandtab
set shiftwidth=4
set smartindent
set tabstop=4
set number
set cursorline
set laststatus=2
set cmdheight=2
set showmatch
set helpheight=999
set ruler
set statusline=2
let dic_line =  { 'dos': 'CRLF', 'unix': 'CR', 'mac': 'LF' }
let f = &fileformat
let s = has_key(dic_line, f) ? dic_line[f] : 'unkwown'
set statusline=%t\ %m%r%h%w[%Y][%{&fenc}][%{s}]%=%c,%l%11p%%
set t_Co=256
" set term=screen-256color-bce
" colorscheme solarized
" let g:solarized_termtrans=256
" set background=dark

set clipboard=unnamed,unnamedplus
set mouse=a
set novisualbell
set vb t_vb=
set shellslash

" インサートモードから抜けると自動的にIMEをoffにする
" ToDo: Macで効かないので、設定方法調べる
" set iminsert=0

set wildmenu wildmode=list:longest,full
set history=50

" === key mappings ===
nnoremap <silent><ESC><ESC> :noh<CR>


" === dein.vim ===
" todo: dein.rcで分割
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

    call dein#load_toml('~/git/neovim-dotfiles/nvim/plugins.toml', {'lazy': 0})
    call dein#load_toml('~/git/neovim-dotfiles/nvim/plugins-lazy.toml', {'lazy':1})

    call dein#end()
    call dein#save_state()
endif

if dein#check_install()
    call dein#install()
endif

filetype plugin indent on
syntax enable

" === NERDTree ===
map <C-e> :NERDTreeToggle<CR>
