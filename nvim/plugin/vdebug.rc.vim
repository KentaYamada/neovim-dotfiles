"
" My vdebug config
" Author: Kenta Yamada
" Repo: https://github.com/KentaYamada/neovim-dotfiles
" Refferences
"  https://github.com/vim-vdebug/vdebug/blob/master/doc/Vdebug.txt
"  https://github.com/vim-vdebug/vdebug/blob/master/plugin/vdebug.vim
"

if !exists('g:vdebug_options')
    let g:vdebug_options = {}
endif

if !exists('g:vdebug_keymap')
    let g:vdebug_keymap = {}
endif

" Default options
let g:vdebug_options.port = 9000
let g:vdebug_options.timeout = 40
let g:vdebug_options.on_close = 'detach'
let g:vdebug_options.ide_key = 'IDE_KEY'

" 0: start break point, 1: stop first line of script
let g:vdebug_options.break_on_open = 0

" key: remote directory, value: local directory
" let g:vdebug_options.path_maps = {'/var/www/html': '/Volumes/hdd/projects/dandoli-work'}

" 0: error, 1: info, 2: debug
let g:vdebug_options.debug_window_level = 0

" no output log file
" let g:vdebug_options.debug_file = '~/Desktop/vdebug.log'
" let g:vdebug_options.debug_file_level = 0

" debug window styles
" style: expanded or compact
let g:vdebug_options.watch_window_style = 'expanded'

" layout: vertical or horizontal
let g:vdebug_options.layout = 'vertical'

" fix: (mac) vim起動時に読み込みエラーになるので、半角文字に置き換え
let g:vdebug_options.sign_disabled = '||'

" Key mappings
let g:vdebug_keymap['run'] = '<C-s>'
