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
    \ 'python': ['pyls'],
    \ 'c': ['gcc', 'clang'],
    \ 'cpp': ['gcc', 'clang'],
    \ 'typescript': ['tslint']
\ }

" linter無効にする設定
let g:ale_linters_ignore = {
    \ 'html': ['tidy'],
    \ 'typescript': ['tsserver']
\ }

" ファイルオープン時にチェックが走らないようにする
let g:ale_lint_on_enter = 0

" 保存時にシンタックスチェック実行
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_insert_leave = 0
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

" エラー間をキーで移動できるようにする
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)


" c lint options
" see: https://github.com/dense-analysis/ale/blob/master/doc/ale-c.txt
let g:ale_c_clang_options = '-Wall -Wextra -std=c11'
let g:ale_c_gcc_options = '-Wall -Wextra -std=c11'

" cpp lint options
" see: https://github.com/dense-analysis/ale/blob/master/doc/ale-cpp.txt
let g:ale_cpp_clang_options = '-Wall -Wextra -std=c++11'
let g:ale_cpp_gcc_options = '-Wall -Wextra -std=c++11'
