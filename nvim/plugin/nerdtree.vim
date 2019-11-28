" key remap
noremap <C-e> :NERDTreeToggle<CR>

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
