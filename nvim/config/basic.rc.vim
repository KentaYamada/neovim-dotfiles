"====================================================
"basic.rc.vim
"
"Author: Kenta Yamada
"Repo: https://github.com/KentaYamada/neovim-dotfiles
" Reference
" :help options
" Reference (Japanese)
" https://vim-jp.org/vimdoc-ja/options.html
"====================================================

"==============
" Beep options
"==============
" ビープ音を可視化しない
set novisualbell
" ビープ鳴らさない
set vb t_vb=

"================
" Cursor options
"================
" カーソル行の表示
set cursorline
" 画面右下にカーソル位置を表示する
set ruler

"=================
" Display options
"=================
" 行番号の表示
set number
" 括弧にカーソルがあたっている場合、対応する括弧を強調表示
set showmatch
" 不可視文字を表示
set list
" 不可視文字の表示に使う文字の設定
set listchars=tab:>-,trail:-,nbsp:%
" 画面最下部のメッセージ表示行数
set cmdheight=2
" ステータスラインの表示(0: never, 1: more than two windows, 2: always)
" todo: airlineなどのプラグインを使うのであれば不要？
set laststatus=2

"==============
" File options
"==============
" 編集中ファイルがvim外部で変更された場合、自動的に読み直す
set autoread
" vim内部で使用するエンコード
set encoding=utf-8
"
set fileencoding=utf-8
" ファイルエンコーディングの判別対象
set fileencodings=utf-8,euc-jp,cp932,iso-2022-jp
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 保存されていないファイルがある時に保存の確認をする
set confirm
" バックスペースの行移動を有効化
set backspace=indent,eol,start
" ディレクトリの区切り文字を(/)にする(for Windows)
set shellslash
" 曖昧幅を固定幅表示する
set ambiwidth=double

"=====================
" Indentation options
"=====================
" スペースのインデント
set expandtab
" インデント幅
set tabstop=4
" 自動インデント幅
set shiftwidth=4
" 改行時に前の行のインデントを継続
set autoindent
" 改行したときに次の行を自動的にインデントする
set smartindent

"==========================
" Search & Replace options
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

"===============
" OS operations
"===============
" バックスペースの削除を有効化
set backspace=indent,eol,start
" クリップボード設定
set clipboard=unnamed,unnamedplus
" vim内でのマウスの挙動を無効化
set mouse=

"===================
" Window operations
"===================
" 水平方向へ分割する場合、ウィンドウの下に開く
set splitbelow
" Help画面の行数
set helpheight=999

"===============
" Other options
"===============
" 履歴の保持数
set history=50

" vimgrepにripgrepを使う
if executable('rg')
    let &grepprg = 'rg --vimgrep'
    set grepformat=%f:%l%c:%m
endif
