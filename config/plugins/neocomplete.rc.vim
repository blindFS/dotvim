let g:neocomplete#disable_auto_complete               = 0
let g:neocomplete#force_overwrite_completefunc        = 1
let g:neocomplete#enable_at_startup                   = 1
let g:neocomplete#enable_ignore_case                  = 1
let g:neocomplete#enable_fuzzy_completion             = 1
let g:neocomplete#data_directory                      = $HOME.'/tmp/.neocomplete'
if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns       = {}
endif
let g:neocomplete#force_omni_input_patterns.python     = '\%([^. \t]\.\|^\s*@\)\w*'
let g:neocomplete#force_omni_input_patterns.dot        = '\[.*'
let g:neocomplete#force_omni_input_patterns.c          = '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.cpp        = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
let g:neocomplete#force_omni_input_patterns.objc       = '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.objcpp     = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
