" deniteのgrepをripgrepに
if executable('rg')
    call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git'])
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
nnoremap <silent> [denite]f :<C-u> Denite file/rec<CR>
nnoremap <silent> [denite]g :<C-u> Denite grep<CR>
nnoremap <silent> [denite]b :<C-u> Denite buffer<CR>
nnoremap <silent> [denite]m :<C-u> Denite file_mru<CR>

autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
    " open filtering window
    nnoremap <silent><buffer><expr> i denite#do_map('open_filter_buffer')
    nnoremap <silent><buffer><expr> a denite#do_map('open_filter_buffer')
    " close denite
    nnoremap <silent><buffer><expr> <C-c> denite#do_map('quit')
    nnoremap <silent><buffer><expr> <ESC> denite#do_map('quit')
    " choose action
    nnoremap <silent><buffer><expr> <Tab> denite#do_map('choose_action')
    " show preview
    nnoremap <silent><buffer><expr> p denite#do_map('do_action', 'preview')
    " do default action
    nnoremap <silent><buffer><expr> <CR> denite#do_map('do_action')
    nnoremap <silent><buffer><expr> <Space> denite#do_map('toggle_select').'j'
endfunction

autocmd FileType denite-filter call s:denite_filter_my_setting()
function! s:denite_filter_my_setting() abort
    inoremap <silent><buffer><expr> <C-c> denite#do_map('quit')
    nnoremap <silent><buffer><expr> <C-c> denite#do_map('quit')
endfunction

