let g:neocomplete#disable_auto_complete            = 0
let g:neocomplete#enable_auto_select               = 1
let g:neocomplete#force_overwrite_completefunc     = 1
let g:neocomplete#enable_at_startup                = 1
let g:neocomplete#enable_camel_case                = 1
let g:neocomplete#enable_ignore_case               = 1
let g:neocomplete#enable_fuzzy_completion          = 1
let g:neocomplete#data_directory                   = $HOME.'/tmp/.neocomplete'
let g:neocomplete#force_omni_input_patterns        = get(g:, 'neocomplete#force_omni_input_patterns', {})
let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
let g:neocomplete#force_omni_input_patterns.dot    = '\[.*'
let g:neocomplete#force_omni_input_patterns.c      = '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.cpp    = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
let g:neocomplete#force_omni_input_patterns.objc   = '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.objcpp = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
let g:neocomplete#text_mode_filetypes              = {
            \ 'markdown' : 1,
            \ 'vimwiki' : 1
            \ }
call neocomplete#custom#source('look', 'min_pattern_length', 3)
