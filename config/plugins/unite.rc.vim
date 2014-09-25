call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#custom#source('command, function',
            \ 'matchers', 'matcher_fuzzy')
call unite#custom#source('neomru/file',
            \ 'matchers', 'matcher_context')
call unite#custom#profile('default',
            \ 'context', {
            \   'start_insert' : 1,
            \   'ignore_case' : 1,
            \   'smart_case' : 1,
            \   'winheight' : 15,
            \   'max_multi_lines' : 20,
            \   'update_time' : 200,
            \   'direction' : 'botright',
            \   'cursor-line-highlight' : 'Statusline',
            \   'prompt' : '➤ '
            \ })
let g:unite#workflow#reddit#front =
            \ 'http://www.reddit.com/.json?'.
            \ 'feed=7e382702f6cfd8bf0db677c9d5f24b946ad737b4'.
            \ '&user=farseer90718'
call unite#custom#profile(
            \ 'source/github/search, source/github/event, '.
            \ 'source/github/feed, source/gist/search, '.
            \ 'source/gist/user, source/v2ex, source/youtube, '.
            \ 'source/reddit, source/wikipedia',
            \ 'context', {
            \   'keep_focus' : 1,
            \   'no_quit' : 1
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
nnoremap <Leader><space>  :Unite -keep-focus -no-quit<CR>
nnoremap <Leader><space>r :UniteResume<CR>
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
nnoremap <leader>t  :Unite youdao:<C-R><C-W><CR>
command!  Mru :Unite neomru/file
command!  Uhelp :Unite help
