let g:ycm_allow_changing_updatetime                  = 0
let g:ycm_register_as_syntastic_checker              = 1
let g:ycm_enable_diagnostic_highlighting             = 1
let g:ycm_confirm_extra_conf                         = 1
let g:ycm_global_ycm_extra_conf                      = '~/tmp/.ycm_extra_conf_c.py'
autocmd FileType c let g:ycm_global_ycm_extra_conf   = '~/tmp/.ycm_extra_conf_c.py'
autocmd FileType cpp let g:ycm_global_ycm_extra_conf = '~/tmp/.ycm_extra_conf_cpp.py'
nnoremap <Leader>yd :YcmCompleter GoToDefinition<CR>
nnoremap <Leader>yi :YcmCompleter GoToImplementation<CR>
nnoremap <Leader>yt :YcmCompleter GetType<CR>
