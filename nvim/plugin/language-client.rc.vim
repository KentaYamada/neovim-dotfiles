"
" My neovim language client config
"
" Author: Kenta Yamada
" My Repo: https://github.com/KentaYamada/neovim-dotfiles
" See: https://github.com/autozimu/LanguageClient-neovim
"

"-----------------------------------------------------------------------------------------
" Basic configs
" LSP対応状況: https://microsoft.github.io/language-server-protocol/implementors/servers/
"-----------------------------------------------------------------------------------------
if !exists('g:LanguageClient_serverCommands')
    let g:LanguageClient_serverCommands = {}
endif

" python lsp
if executable('pyls')
    let g:LanguageClient_serverCommands['python'] = ['/usr/local/bin/pyls']
endif

"--------------
" Key mappings
"--------------
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
" jump to definition
nnoremap <C-]> :call LanguageClient#textDocument_definition()<CR>
" go back
nnoremap <C-T> <C-O>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
