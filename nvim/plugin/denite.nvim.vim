"deniteのgrepにagを使用
if executable('ag')
    call denite#custom#var('file_rec', 'command', ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
    call denite#custom#var('grep', 'command', ['ag'])
    call denite#custom#var('grep', 'recursive_opts', [])
    call denite#custom#var('grep', 'parent_opt', [])
    call denite#custom#var('grep', 'default_opts', ['--follow', '--no-group', '--no-color'])
endif
