" key remap
noremap <C-e> :NERDTreeToggle<CR>

" Ignore files.
let g:NERDTreeIgnore = [
    \'\.git',
    \'\.pyc$',
    \'\.class$',
    \'\.pyc$',
    \'\.egg-info[[dir]]',
    \'__pycache__[[dir]]'
\]

" Show hidden file
let NERDTreeShowHidden = 1
