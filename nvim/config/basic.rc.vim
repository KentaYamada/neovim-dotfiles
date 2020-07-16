"
" My basic options
" Author: Kenta Yamada
" Repo: https://github.com/KentaYamada/neovim-dotfiles
"

"===========
" Variables
"===========
" Enable python3
let g:python3_host_prog = expand('/usr/local/bin/python3')

"=================
" Display options
"=================
" 行番号の表示
set number
" カーソル表示
set ruler
" カーソル行の背景色
set cursorline
" ステータスラインの表示(0: never, 1: more than two windows, 2: always)
set laststatus=2
" 画面最下部のメッセージ表示行数
set cmdheight=2
" カッコにカーソルがあたっている場合、対応するカッコを強調表示
set showmatch
" Help画面の行数
set helpheight=999
" 不可視文字を表示
set list
" 不可視文字の表示に使う文字の設定
set listchars=tab:>-,trail:-,nbsp:%

"==================
" File options
"==================
" 保存されていないファイルがある時に保存の確認をする
set confirm
" vim上で変更のないファイルについて、外部で変更があった場合、自動的に読み込む
set autoread
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile

"==========================
" Search/Replace options
"==========================
" 検索文字列をハイライト
set hlsearch
" インクリメンタルサーチ
set incsearch
" 検索時に大文字、小文字を区別しない
set ignorecase
" 検索文字列に大文字、小文字が混在した場合に区別して検索する
set smartcase
" 検索候補の最後尾にたどり着いたら、先頭へ戻る
set wrapscan

"====================
" Tab/Indent options
"====================
" スペースのインデント
set expandtab
" 改行時に前の行のインデントを継続
set autoindent
" 改行したときに次の行を自動的にインデントする
set smartindent
" インデント幅
set tabstop=4
" 自動インデント幅
set shiftwidth=4

set noundofile
set ambiwidth=double
set backspace=indent,eol,start
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,euc-jp,cp932,iso-2022-jp



" buffer split option
set splitbelow

" spell checking
set spell
set spelllang=en,cjk


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

