" let g:neosnippet#enable_preview = 1
" set completeopt+=preview
let g:neosnippet#snippets_directory = $HOME.'/.vim/snippets'
let g:neosnippet#data_directory     = $HOME.'/tmp/neosnippet'

imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)
imap <C-l> <Plug>(neosnippet_start_unite_snippet)
