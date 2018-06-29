"
" vim-watchdogs config
" author: Kenta Yamada
" repo: https://github.com/KentaYamada/neovim-dotfiles
" see refference: https://github.com/osyo-manga/vim-watchdogs/blob/master/doc/watchdogs.jax
"

" filetype別 syntax check設定
let g:watchdogs_check_BufWritePost_enables = {
\   'php': 1,
\   'sh': 1,
\   'ts': 1
\}

" 一定期間キー入力がない場合にsyntax check実行
let g:watchdogs_checker_CursorHold_enables = {
\   'php': 1,
\   'sh': 1,
\   'ts': 1
\}

" filetype別に使用するsyntax toolを設定
" (vim-watchdogsでデフォルト設定されているもの以外を使う場合に設定)
" let g:quickrun_config = {
" \   'type': 'watchdogs_checker/tslint'
" \}

" 保存して終了した場合にシンタックスチェックを無効化
let g:watchdogs_check_BufWritePost_enable_on_wq = 0

" 設定反映
" call watchdogs#setup(g:quickrun_config)
