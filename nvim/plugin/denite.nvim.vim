" deniteのgrepにagを使用
if executable('ag')
    call denite#custom#var('grep', 'command', ['ag'])
endif
