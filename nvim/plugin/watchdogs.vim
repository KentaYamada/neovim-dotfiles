"
" My vim-watchdogs config
" see: https://github.com/osyo-manga/vim-watchdogs/blob/master/doc/watchdogs.jax
"

" filetype別 syntax check設定
let g:watchdogs_check_BufWritePost_enables = {
\   'php': 1,
\   'sh': 1
\}

" 一定期間キー入力がない場合にsyntax check実行
let g:watchdogs_checker_CursorHold_enables = {
\   'php': 1,
\   'sh': 1
\}
