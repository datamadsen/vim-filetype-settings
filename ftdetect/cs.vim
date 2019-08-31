" Show type information automatically when the cursor stops moving
autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

autocmd FileType cs nnoremap <buffer> <Leader>dc :OmniSharpDocumentation<CR>
autocmd FileType cs nnoremap <buffer> <C-\> :OmniSharpSignatureHelp<CR>
autocmd FileType cs command! Signature :OmniSharpSignatureHelp

" Navigate up and down by method/property/field
autocmd FileType cs nnoremap <buffer> <M-k> :OmniSharpNavigateUp<CR>
autocmd FileType cs nnoremap <buffer> <M-j> :OmniSharpNavigateDown<CR>

" Find all code errors/warnings for the current solution and populate the quickfix window
autocmd FileType cs command! Check :OmniSharpGlobalCodeCheck

autocmd FileType cs command! GotoDefinition :OmniSharpGotoDefinition
autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>

autocmd FileType cs command! Implementation :OmniSharpFindImplementations
autocmd FileType cs command! FindImplementation :OmniSharpFindImplementations
autocmd FileType cs nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>

autocmd FileType cs command! Symbol :OmniSharpFindSymbol
autocmd FileType cs command! FindSymbol :OmniSharpFindSymbol
autocmd FileType cs nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>

autocmd FileType cs command! Usages :OmniSharpFindUsages
autocmd FileType cs command! FindUsages :OmniSharpFindUsages
autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>

autocmd FileType cs command! FindMembers :OmniSharpFindMembers
autocmd FileType cs command! Members :OmniSharpFindMembers
autocmd FileType cs nnoremap <buffer> <Leader>fm :OmniSharpFindMembers<CR>

autocmd FileType cs command! FixUsings :OmniSharpFixUsings
autocmd FileType cs nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>

autocmd FileType cs command! TypeLookup :OmniSharpTypeLookup
autocmd FileType cs nnoremap <buffer> <Leader>tt :OmniSharpTypeLookup<CR>

autocmd FileType cs command! Documentation :OmniSharpDocumentation

autocmd FileType cs command! Actions :OmniSharpGetCodeActions

autocmd FileType cs command! Rename :OmniSharpRename

autocmd FileType cs command! Format :OmniSharpCodeFormat

autocmd FileType cs command! StopAll :OmniSharpStopAllServers
autocmd FileType cs command! Stop :OmniSharpStopServer
autocmd FileType cs command! Start :OmniSharpStartServer

autocmd FileType cs map <C-]> :OmniSharpGotoDefinition<CR>
autocmd FileType cs map <C-f> :OmniSharpCodeFormat<CR>
autocmd FileType cs map <C-a> :OmniSharpCodeActions<CR>

" Contextual code actions (uses fzf, CtrlP or unite.vim when available)
autocmd FileType cs nnoremap <Leader><Space> :OmniSharpGetCodeActions<CR>
" Run code actions with text selected in visual mode to extract method
autocmd FileType cs xnoremap <Leader><Space> :call OmniSharp#GetCodeActions('visual')<CR>


" Fold at the method level and nothing below or above that.
autocmd FileType cs setlocal foldmethod=indent
autocmd FileType cs setlocal foldnestmax=3
autocmd FileType cs setlocal foldlevelstart=2
autocmd FileType cs setlocal foldlevel=2
autocmd FileType cs map zM :setlocal foldlevel=2<CR>

" We need the sign column to display errors and stuff.
autocmd FileType cs setlocal signcolumn=yes
