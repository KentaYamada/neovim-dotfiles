
" Ignore files.
let g:NERDTreeIgnore = [
    \'\.git',
    \'\.pyc$',
    \'\.class$',
    \'\.pyc$',
    \'\.egg-info[[dir]]',
    \'__pycache__[[dir]]',
    \ 'node_modules'
\]

" Show hidden file
let NERDTreeShowHidden = 1
let g:webdevicons_enable_nerdtreee = 0

augroup nerdTreeCmd
    autocmd!
    " NERDTreeだけ残るときにVimを終了する
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
augroup END

" key remap
noremap <C-e> :NERDTreeToggle<CR>
