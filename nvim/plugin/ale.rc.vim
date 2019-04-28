"
" ale.rc.vim
" My ALE config
" Author: Kenta Yamada
" My Repo: https://github.com/KentaYamada/neovim-dotfiles
" Plugin Repo: https://github.com/w0rp/ale
"

" ファイルタイプ別linter設定
" デフォルトはALEリポジトリのREADME.md参照
let g:ale_linters = {
    \ 'php': ['php'],
    \ 'python': ['flake8']
\ }

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

" メッセージフォーマット
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

