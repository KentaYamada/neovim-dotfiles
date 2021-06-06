" ===========================================
" netrw.rc.vim
"
" netrw plugin configuration
" Author: Kenta Yamada
"
" Refference (Japanese)
" https://vim-jp.org/vimdoc-ja/pi_netrw.html
" ===========================================

let g:loaded_netrwPlugin = 1
finish

" netrwの表示スタイルをツリー形式にする
let g:netrw_liststyle = 3
" ヘッダを非表示
let g:netrw_banner = 0
" 上下分割を下側に開く
let g:netrw_alt_o = 1
" 左右分割を右側に開く
let g:netrw_altv = 1
" 表示サイズ
let g:netrw_winsize = 20
" 以前のウィンドウで開く
let g:netrw_browse_split = 4

" toggle netrw
function! ToggleNetrw()
    if exists('t:expl_buf_num')
        let expl_win_num = bufwinnr(t:expl_buf_num)

        if expl_win_num != -1
            let cur_win_nr = winnr()
            exec expl_win_num . 'wincmd w'
            close
            exec cur_win_nr . 'wincmd w'
        endif

        unlet t:expl_buf_num
    else
        exec '1wincmd w'
        Vexplore
        let t:expl_buf_num = bufnr('%')
    endif
endfunction

" Key mapping
nnoremap <silent><C-E> :call ToggleNetrw()<CR>
