let g:ycm_allow_changing_updatetime                  = 0
let g:ycm_register_as_syntastic_checker              = 1
let g:ycm_confirm_extra_conf                         = 1
let g:ycm_global_ycm_extra_conf                      = '~/tmp/.ycm_extra_conf_c.py'
" let g:ycm_filetype_whitelist                         = { 'python': 1, 'cpp': 1, 'c': 1}
autocmd FileType c let g:ycm_global_ycm_extra_conf   = '~/tmp/.ycm_extra_conf_c.py'
autocmd FileType cpp let g:ycm_global_ycm_extra_conf = '~/tmp/.ycm_extra_conf_cpp.py'
