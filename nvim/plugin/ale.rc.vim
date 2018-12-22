"
" ale.rc.vim
" My ALE config
" Author: Kenta Yamada
" Repo: https://github.com/KentaYamada/neovim-dotfiles
"

" ファイルオープン時にチェックが走らないようにする
let g:ale_lint_on_enter = 0

" 保存時にシンタックスチェック実行
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_save = 1

" エラー数と警告数をステータスラインに表示
let g:lightline = {
    \'active': {
        \'left': [
            \['mode', 'paste'],
            \['readonly', 'filename', 'modified', 'ale']
        \]
    \},
    \'component_function': {
        \'ale': 'ALEGetStatusLine'
    \}
\}
