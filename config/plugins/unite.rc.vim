call unite#custom#source('command, function, file, mapping, neomru/file',
            \ 'matchers', 'matcher_fuzzy')
call unite#custom#profile('default', 'context', {
            \ 'start_insert' : 1,
            \ 'ignore_case' : 1,
            \ 'smart_case' : 1,
            \ 'winheight' : 10,
            \ 'direction' : 'topleft',
            \ 'cursor-line-highlight' : 'Statusline',
            \ 'prompt' : '➤ '
            \ })
let g:unite_data_directory                = $HOME.'/tmp/unite'
let g:unite_source_grep_max_candidates    = 30
if executable('ag')
    let g:unite_source_grep_command       = 'ag'
    let g:unite_source_grep_default_opts  =
                \ '-i --line-numbers --nocolor --nogroup --hidden --ignore ' .
                \  '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
    let g:unite_source_grep_recursive_opt = ''
endif
command!  Uhelp :Unite help
