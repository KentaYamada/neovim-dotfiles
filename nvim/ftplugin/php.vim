"
" My PHP ft config
"
if exists('b:did_ftplugin_php')
    finish
endif
let b:did_ftplugin_php = 1


" indent
setlocal expandtab
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4

" default database.
let g:sql_type_default = 'mysql'

