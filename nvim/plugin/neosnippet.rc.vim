"
" My neosnippet config
" Author: Kenta Yamada
" My Repo: https://github.com/KentaYamada/neovim-dotfiles
" See help or refference: https://github.com/Shougo/neosnippet.vim
"

" Ctrl + kでターゲットジャンプ
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" Tab補完
smap <sxpr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"


if has('conceal')
    set conceallevel=2 concealcursor=niv
endif
