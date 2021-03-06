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

if !exists('g:LanguageClient_rootMarkers')
    let g:LanguageClient_rootMarkers = {}
endif

" c/c++ lsp
if executable('clangd')
    let s:clangd_dir = system('echo -n $(which clangd)')
    let g:LanguageClient_serverCommands['c'] = [s:clangd_dir]
    let g:LanguageClient_serverCommands['cpp'] = [s:clangd_dir]
endif

" python lsp
if executable('pyls')
    let s:pyls_dir = system('echo -n $(which pyls)')
    let g:LanguageClient_serverCommands['python'] = [s:pyls_dir]
endif

" javascript/typescript lsp
if executable('javascript-typescript-langserver')
    let g:LanguageClient_serverCommands['javascript'] = ['javascript-typescript-stdio']
    let g:LanguageClient_serverCommands['typescript'] = ['javascript-typescript-stdio']
    " todo: 必要になったらコメント解除
    " let g:LanguageClient_rootMarkers['javascript'] = ['jsconfig.json']
    let g:LanguageClient_rootMarkers['typescript'] = ['tsconfig.json']
endif

" php
if executable('intelephense')
    let g:LanguageClient_serverCommands['php'] = ['intelephense', '--stdio']
endif


" vim起動時にplugin起動
let g:LanguageClient_autoStart = 1
" linter機能を使うか
" Note: ALEを使う
let g:LanguageClient_diagnosticsEnable = 0

"--------------
" Key mappings
"--------------
" 定義元へjump
nnoremap <C-]> :call LanguageClient#textDocument_definition()<CR>
" 呼び出し先へ戻る
nnoremap <C-T> <C-O>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
