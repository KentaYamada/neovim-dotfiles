
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
set encoding=UTF-8
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
let dic_line =  { 'dos': 'CRLF', 'unix': 'CR', 'mac': 'LF' }
let f = &fileformat
let s = has_key(dic_line, f) ? dic_line[f] : 'unkwown'
set statusline=%t\ %m%r%h%w[%Y][%{&fenc}][%{s}]%=%c,%l%11p%%

" enable python3
let g:python3_host_prog = expand('/usr/local/bin/python3')

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

" === dein.vim ===
source $HOME/.config/nvim/plugin/dein.rc.vim

" == color scheme ===
set termguicolors
set background=dark
colorscheme gruvbox

syntax on

" === key mappings ===
nnoremap <silent><ESC><ESC> :noh<CR>

" タブ操作
nnoremap tnw :<C-u>tabnew<CR>
nnoremap tc :<C-u>tabclose<CR>
nnoremap tn gt
nnoremap tp gT

" === terminal mode ===
" ESCでターミナルモードからノーマルモードへ
tnoremap <ESC> <C-\><C-n>

" ctagsのキーマップ
if executable('ctags')
    "set tags=./.git/tags,./tags
    set tags=tags
    " 複数候補が選択できるようにする
    nnoremap <C-]> g<C-]>
endif

" === auto commands ===
augroup tscmd
    autocmd!
    autocmd BufNewFile,BufRead *.ts setfiletype typescript
augroup END

augroup CakePhpCmd
    autocmd!
    autocmd BufNewFile,BufRead *.ctp setfiletype html
augroup END

augroup initVimCmd
    autocmd!
    autocmd BufWritePost init.vim source $MYVIMRC
augroup END

" project毎の設定読み込み
augroup vimrc-local
    autocmd!
    autocmd BufNewFile,BufReadPost * call s:vimrc_local(expand('<afile>:p:h'))
    autocmd BufReadPre .vimrc.local setfiletype=vim
augroup END

" .vimrc.localを探して読み込む
function! s:vimrc_local(loc)
    let files = findfile('.vimrc.local', escape(a:loc, ' ') . ';', -1)
    for i in reverse(filter(files, 'filereadable(v:val)'))
        source `=i`
    endfor
endfunction
