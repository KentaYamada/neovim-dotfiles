
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
source ~/git/neovim-dotfiles/nvim/plugin/dein.rc.vim

" == color scheme ===
" if has('termguicolors')
"     set termguicolors
" endif
"set t_Co=256
" colorscheme desert
colorscheme tender
let g:airline_theme = 'tender'

" === auto commands ===
augroup tscmd
    autocmd!
    autocmd BufNewFile,BufRead *.ts setfiletype typescript
augroup END
