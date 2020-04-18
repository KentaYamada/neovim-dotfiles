"
" My Key mappings
" Author: Kenta Yamada
" Repo: https://github.com/KentaYamada/neovim-dotfiles
"

"=============
" Normal mode
"=============
" .vimrc(init.vim)を開く
nmap ,v :edit $MYVIMRC<CR>

" ESC連打でハイライトリセット
nnoremap <silent><ESC><ESC> :noh<CR>

" タブ操作
nnoremap tnw :<C-u>tabnew<CR>
nnoremap tc :<C-u>tabclose<CR>
nnoremap tn gt
nnoremap tp gT

"===============
" Terminal mode
"===============
" ESCでNormal modeに切替
tnoremap <ESC> <C-\><C-n>


" ========
" Plugins
" ========

" GitUp(for Mac)
if has('mac') && executable('gitup')
    nnoremap <silent> <Space>gu :!gitup<CR>
endif

" ctags
if executable('ctags')
    "set tags=./.git/tags,./tags
    set tags=tags
    " 複数候補が選択できるようにする
    nnoremap <C-]> g<C-]>
endif
