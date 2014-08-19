call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#custom#source('command, function',
            \ 'matchers', 'matcher_fuzzy')
call unite#custom#source('neomru/file',
            \ 'matchers', 'matcher_context')
call unite#custom#profile('default', 'context', {
            \ 'start_insert' : 1,
            \ 'ignore_case' : 1,
            \ 'smart_case' : 1,
            \ 'winheight' : 10,
            \ 'direction' : 'botright',
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
nnoremap <Leader><space>  :Unite<CR>
nnoremap <Leader><space>b :Unite buffer_tab<CR>
nnoremap <leader><space>B :Unite buffer<CR>
nnoremap <leader><space>c :Unite command<CR>
nnoremap <leader><space>f :Unite file<CR>
nnoremap <leader><space>j :Unite jump<CR>
nnoremap <leader><space>l :Unite buffer_tab<CR>
nnoremap <leader><space>m :Unite mapping<CR>
nnoremap <leader><space>o :Unite outline<CR>
nnoremap <leader><space>p :Unite mapping<CR>
nnoremap <leader><space>s :Unite source<CR>
nnoremap <leader><space>t :Unite tab<CR>
nnoremap <leader><space>T :Unite tag<CR>
nnoremap <leader><space>y :Unite history/yank<CR>
nnoremap <leader><space>/ :Unite grep:.<CR>
nnoremap <leader>gg :UniteWithCursorWord gtags/def<CR>
nnoremap <leader>gc :UniteWithCursorWord gtags/completion<CR>
nnoremap <leader>gr :Unite gtags/ref<CR>
nnoremap <leader>ge :Unite gtags/grep<CR>
command!  Mru :Unite neomru/file
command!  Uhelp :Unite help
