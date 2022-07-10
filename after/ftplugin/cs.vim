let b:did_ftplugin=1

nnoremap <buffer> <Leader>dc :OmniSharpDocumentation<CR>
nnoremap <buffer> <C-\> :OmniSharpSignatureHelp<CR>
command! Signature :OmniSharpSignatureHelp

" Find all code errors/warnings for the current solution and populate the quickfix window
command! Check :OmniSharpGlobalCodeCheck

command! GotoDefinition :OmniSharpGotoDefinition
nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>

command! Implementation :OmniSharpFindImplementations
command! FindImplementation :OmniSharpFindImplementations
nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>

command! Symbol :OmniSharpFindSymbol
command! FindSymbol :OmniSharpFindSymbol
nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>

command! Type :OmniSharpFindType
command! FindType :OmniSharpFindType
nnoremap <buffer> <Leader>ft :OmniSharpFindType<CR>

command! Usages :OmniSharpFindUsages
command! FindUsages :OmniSharpFindUsages
nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>

command! FindMembers :OmniSharpFindMembers
command! Members :OmniSharpFindMembers
nnoremap <buffer> <Leader>fm :OmniSharpFindMembers<CR>

command! FixUsings :OmniSharpFixUsings
nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>

command! TypeLookup :OmniSharpTypeLookup
nnoremap <buffer> <Leader>tt :OmniSharpTypeLookup<CR>

command! Documentation :OmniSharpDocumentation

command! Actions :OmniSharpGetCodeActions

command! Rename :OmniSharpRename
command! RenameTo :OmniSharpRenameTo

command! Format :OmniSharpCodeFormat

command! StopAll :OmniSharpStopAllServers
command! Stop :OmniSharpStopServer
command! Start :OmniSharpStartServer

map <C-]> :OmniSharpGotoDefinition<CR>
map <C-f> :OmniSharpCodeFormat<CR>
map <C-a> :OmniSharpCodeActions<CR>

" Contextual code actions (uses fzf, CtrlP or unite.vim when available)
nnoremap <Leader><Space> :OmniSharpGetCodeActions<CR>
" Run code actions with text selected in visual mode to extract method
xnoremap <Leader><Space> :call OmniSharp#GetCodeActions('visual')<CR>

" Automatically popup the method signature helper where it can.
" Will not work with auto-pairing plugins like pear-tree.
inoremap <expr> ( AutoSignatureHelp()
function! AutoSignatureHelp()
    call  OmniSharp#actions#signature#SignatureHelp()
    return "("
endfunction

" folding
setlocal foldmethod=syntax
map zM :setlocal foldlevel=1<CR>

" We need the sign column to display errors and stuff.
setlocal signcolumn=yes

setlocal fo=crqj

setlocal tabstop=4
setlocal shiftwidth=4
setlocal expandtab

compiler dotnet_build
