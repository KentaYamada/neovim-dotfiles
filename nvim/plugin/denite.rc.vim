" deniteのgrepをripgrepに
if executable('rg')
    call denite#custom#var('file_rec', 'command', ['rg', '--files', '--glob', '!.git'])
    call denite#custom#var('grep', 'command', ['rg'])
    call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep', '--no-heading'])
    call denite#custom#var('grep', 'recursive_opts', [])
    call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
    call denite#custom#var('grep', 'separator', ['--'])
    call denite#custom#var('grep', 'final_opts', [])
endif

" key mapping
nnoremap [denite] <Nop>
nmap <Space>d [denite]

nnoremap <silent> [denite]f :<C-u> Denite file_rec<CR>
nnoremap <silent> [denite]g :<C-u> Denite grep -mode=normal<CR>
