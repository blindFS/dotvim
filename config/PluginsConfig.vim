let s:plugin_rcs = '~/.vim/config/plugins/'
"--------------------------------------------------------------------------------------------------------------
" plugin - vim-devicons
" https://github.com/ryanoasis/vim-devicons.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vim-devicons')
    let g:webdevicons_enable                    = 1
    let g:webdevicons_enable_unite              = 1
    let g:webdevicons_enable_vimfilter          = 1
    let g:webdevicons_enable_airline_statusline = 1
    let g:WebDevIconsUnicodeDecorateFileNodes   = 1
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - vim-easymotion
" https://github.com/Lokaltog/vim-easymotion.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vim-easymotion')
    let g:EasyMotion_smartcase  = 1
    let g:EasyMotion_do_mapping = 0
    set nohlsearch
    nmap s  <Plug>(easymotion-s)
    nmap S  <Plug>(easymotion-s2)
    map  // <Plug>(easymotion-sn)
    omap // <Plug>(easymotion-tn)
    nmap *  //<CR>
    nmap #  //<CR>
    vmap *  "ey//e<CR>
    vmap #  "ey//e<CR>
    map  n  <Plug>(easymotion-next)
    map  N  <Plug>(easymotion-prev)
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - vim-peekaboo
" https://github.com/junegunn/vim-peekaboo.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vim-peekaboo')
    let g:peekaboo_window = 'botright 20new'
    let g:peekaboo_delay  = 1000
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - Cmd2.vim
" https://github.com/gelguy/Cmd2.vim.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('Cmd2.vim')
    source ~/.vim/config/plugins/cmd2.rc.vim
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - echodoc.vim
" https://github.com/Shougo/echodoc.vim.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('echodoc.vim')
    let g:echodoc_enable_at_startup = 1
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - caw.vim
" https://github.com/tyru/caw.vim.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('caw.vim')
    autocmd FileType * call s:init_caw()
    function! s:init_caw()
        if !&l:modifiable
            silent! nunmap <buffer> gc
            silent! xunmap <buffer> gc
            silent! vunmap <buffer> gc
            silent! nunmap <buffer> gcc
            silent! xunmap <buffer> gcc
        else
            nmap <buffer> gc <Plug>(caw:prefix)
            xmap <buffer> gc <Plug>(caw:prefix)
            vmap <buffer> gc <Plug>(caw:i:toggle)
            nmap <buffer> gcc <Plug>(caw:i:toggle)
            xmap <buffer> gcc <Plug>(caw:i:toggle)
        endif
    endfunction
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - vim-textobj-python
" https://github.com/bps/vim-textobj-python.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vim-textobj-python')
    augroup pythonObj
        autocmd!
        autocmd FileType python xmap <buffer> af <Plug>(textobj-python-function-a)
        autocmd FileType python omap <buffer> af <Plug>(textobj-python-function-a)
        autocmd FileType python xmap <buffer> if <Plug>(textobj-python-function-i)
        autocmd FileType python omap <buffer> if <Plug>(textobj-python-function-i)
        autocmd FileType python xmap <buffer> ac <Plug>(textobj-python-class-a)
        autocmd FileType python omap <buffer> ac <Plug>(textobj-python-class-a)
        autocmd FileType python xmap <buffer> ic <Plug>(textobj-python-class-i)
        autocmd FileType python omap <buffer> ic <Plug>(textobj-python-class-i)
    augroup END
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - vim-jplus
" https://github.com/osyo-manga/vim-jplus.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vim-jplus')
    nmap J <Plug>(jplus)
    vmap J <Plug>(jplus)
    nmap <Leader>J <Plug>(jplus-input)
    vmap <Leader>J <Plug>(jplus-input)
    let g:jplus#config = {
                \   "_" : {
                \       "delimiter_format" : '%d'
                \   }
                \ }
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - vim-exchange
" https://github.com/tommcdo/vim-exchange.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vim-exchange')
    xmap X   <Plug>(Exchange)
    nmap cx  <Plug>(Exchange)
    nmap cxc <Plug>(ExchangeClear)
    nmap cxx <Plug>(ExchangeLine)
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - cmdline-completion
" https://github.com/vim-scripts/cmdline-completion.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('cmdline-completion')
    cmap <C-P> <Plug>CmdlineCompletionBackward
    cmap <C-N> <Plug>CmdlineCompletionForward
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - DrawIt
" https://github.com/vim-scripts/DrawIt.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('DrawIt')
    nmap <Leader>di <Plug>DrawItStart
    nmap <Leader>ds <Plug>DrawItStop
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - vim2hs
" https://github.com/dag/vim2hs.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vim2hs')
    let g:haskell_conceal_wide         = 1
    let g:haskell_conceal_bad          = 1
    let g:haskell_conceal_enumerations = 1
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - ghcmod-vim
" https://github.com/eagletmt/ghcmod-vim.git
"--------------------------------------------------------------------------------------------------------------
"--------------------------------------------------------------------------------------------------------------
" plugin - neco-ghc
" https://github.com/eagletmt/neco-ghc.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('neco-ghc')
    let g:necoghc_enable_detailed_browse = 1
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - vim-ref
" https://github.com/thinca/vim-ref.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vim-ref')
    let g:ref_cache_dir       = $HOME.'/tmp/.vim_ref_cache'
    let g:ref_pydoc_cmd       = 'pydoc2'
    let g:ref_detect_filetype = { 'vimwiki' : 'man', 'markdown' : 'man', 'sh' : 'man'}
    nmap K <Plug>(ref-keyword)
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - wildfire.vim
" https://github.com/gcmt/wildfire.vim.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('wildfire.vim')
    let g:wildfire_objects   = {
                \ "*" : ["i'", 'i"', "i)", "i]", "i}", "ii", "ip"],
                \ "html,xml" : ["at"],
                \ }
    nmap + <Plug>(wildfire-fuel)
    nmap - <Plug>(wildfire-water)
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - gitv
" https://github.com/gregsexton/gitv.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('gitv')
    let g:Gitv_OpenHorizontal = 0
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - github-issues.vim
" https://github.com/jaxbot/github-issues.vim.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('github-issues.vim')
    let g:github_issues_no_omni = 0
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - tComment
" https://github.com/vim-scripts/tComment.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('tComment')
    let g:tcommentTextObjectInlineComment = 'im'
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - calendar.vim
" https://github.com/itchyny/calendar.vim.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('calendar.vim')
    let g:calendar_google_calendar = 1
    let g:calendar_google_task     = 1
    let g:calendar_cache_directory = $HOME.'/tmp/calendar_vim/'
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - vim-multiple-cursors
" https://github.com/terryma/vim-multiple-cursors
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vim-multiple-cursors')
    highlight link multiple_cursors_visual IncSearch
    nnoremap <C-N> :call multiple_cursors#new("n", 0)<CR>
    xnoremap <C-N> :<C-U>call multiple_cursors#new("n", 0)<CR>
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - wmgraphviz.vim
" https://github.com/wannesm/wmgraphviz.vim.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('wmgraphviz.vim')
    let g:WMGraphviz_output = 'png'
    let g:WMGraphviz_viewer = 'xdg-open'
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - miscellaneous
" https://github.com/farseer90718/miscellaneous.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('miscellaneous')
    vmap  <expr>  <LEFT>   DVB_Drag('left')
    vmap  <expr>  <RIGHT>  DVB_Drag('right')
    vmap  <expr>  <DOWN>   DVB_Drag('down')
    vmap  <expr>  <UP>     DVB_Drag('up')
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - crunch
" https://github.com/arecarn/crunch.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('crunch')
    let g:crunch_calc_prompt = '➤  '
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - vim-easy-align
" https://github.com/junegunn/vim-easy-align.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vim-easy-align')
    let neobundle#hooks.on_source =
                \ s:plugin_rcs.'easy-align.rc.vim'
    vnoremap <silent> <Enter> :EasyAlign<CR>
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - vim-translator
" https://github.com/farseer90718/vim-translator.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vim-translator')
    " let g:translate_cmd = 'ydcv'
    let g:translate_player = 'mpv'
    vmap T  <Plug>Translate
    vmap R  <Plug>TranslateReplace
    vmap P  <Plug>TranslateSpeak
    vmap Pj :call translator#speak('ja')<CR>
    call neobundle#untap()
endif
command! -range Speak :call system('echo "'.GetVisualSelection().
            \ '" | festival --tts &')
"--------------------------------------------------------------------------------------------------------------
" plugin - vim-taskwarrior
" https://github.com/farseer90718/vim-taskwarrior.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vim-taskwarrior')
    let g:task_report_name              = 'long'
    let g:task_highlight_field          = 1
    let g:task_field_highlight_advanced = ''
    let g:task_default_prompt           = ['project', 'description', 'due', 'priority', 'tag', 'depend']
    let g:task_rc_override              = ''
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - vim-reveal
" https://github.com/farseer90718/vim-reveal.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vim-reveal')
    let g:reveal_root_path      = $HOME.'/workspace/html/apps/reveal.js'
    let g:reveal_default_config = {
                \'author' : '"farseer"',
                \'description' : '"This presentation is generated by vim-reveal."',
                \'fname' : 'reveal'
                \}
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - NrrwRgn
" https://github.com/chrisbra/NrrwRgn.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('NrrwRgn')
    let g:nrrw_rgn_vert = 1
    let g:nrrw_rgn_wdth = 80
    let g:airline#extensions#nrrwrgn#enabled = 0
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - vim-regionsyntax
" https://github.com/farseer90718/vim-regionsyntax.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vim-regionsyntax')
    let neobundle#hooks.on_source =
                \ s:plugin_rcs.'region-syntax.rc.vim'
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - context_filetype.vim
" https://github.com/Shougo/context_filetype.vim.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('context_filetype.vim')
    let neobundle#hooks.on_source =
                \ s:plugin_rcs.'context-filetype.rc.vim'
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - slimv
" https://bitbucket.org/kovisoft/slimv
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('slimv')
    let g:slimv_impl     = 'sbcl'
    let g:paredit_leader = ','
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - gist-vim
" https://github.com/mattn/gist-vim.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('gist-vim')
    let g:gist_clip_command              = 'xclip -selection clipboard'
    let g:gist_detect_filetype           = 1
    let g:gist_open_browser_after_post   = 0
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - syntastic
" https://github.com/scrooloose/syntastic.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('syntastic')
    let g:syntastic_enable_signs    = 1
    let g:syntastic_error_symbol    = 'x'
    let g:syntastic_warning_symbol  = '!'
    let g:syntastic_tex_checkers    = ['lacheck']
    let g:syntastic_python_checkers = ['flake8']
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - vim-json
" https://github.com/elzr/vim-json.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vim-json')
    highlight default link jsonKeyword Keyword
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - vim-markdown
" https://github.com/plasticboy/vim-markdown.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vim-markdown')
    let g:vim_markdown_initial_foldlevel=99
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - vimwiki
" https://github.com/vimwiki/vimwiki
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vimwiki')
    nmap <Leader>ww <Plug>VimwikiIndex
    let neobundle#hooks.on_source =
                \ s:plugin_rcs.'vimwiki.rc.vim'
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - colorizer             color highlight
" https://github.com/lilydjwg/colorizer.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('colorizer')
    nnoremap <F8> :ColorToggle<CR>
    let g:colorizer_nomap   = 1
    let g:colorizer_startup = 0
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - vim-signify
" https://github.com/mhinz/vim-signify.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vim-signify')
    let neobundle#hooks.on_source =
                \ s:plugin_rcs.'signify.rc.vim'
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - vim-airline
" https://github.com/bling/vim-airline.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vim-airline')
    let g:airline_theme                               = 'bubblegum'
    let g:airline_left_sep                            = ''
    let g:airline_left_alt_sep                        = ''
    let g:airline_right_sep                           = ''
    let g:airline_right_alt_sep                       = ''
    let g:airline#extensions#tabline#left_sep         = ''
    let g:airline#extensions#tabline#left_alt_sep     = ''
    let g:airline#extensions#tabline#right_sep        = ''
    let g:airline#extensions#tabline#right_alt_sep    = ''
    let g:airline_symbols                             = get(g:, 'airline_symbols', {})
    let g:airline_symbols.branch                      = '  '
    let g:airline_symbols.readonly                    = '  '
    let g:airline_symbols.linenr                      = '  '
    let g:airline_symbols.paste                       = ' ✍  PASTE'
    let g:airline_symbols.whitespace                  = 'Ξ'
    let g:airline#extensions#whitespace#show_message  = 0
    let g:airline#extensions#eclim#enabled            = 1
    let g:airline#extensions#hunks#non_zero_only      = 1
    let g:airline#extensions#tabline#enabled          = 1
    let g:airline#extensions#tabline#show_buffers     = 1
    let g:airline#extensions#tabline#buffer_min_count = 2
    let g:airline#extensions#tabline#fnamemod         = ':t'
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - unite.vim
" https://github.com/Shougo/unite.vim
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('unite.vim')
    source ~/.vim/config/plugins/unite.rc.vim
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - neomru.vim
" https://github.com/Shougo/neomru.vim.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('neomru.vim')
    let g:neomru#file_mru_path = $HOME.'/tmp/neomru/file'
    let g:neomru#directory_mru_path = $HOME.'/tmp/neomru/directory'
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - unite-gtags
" https://github.com/hewes/unite-gtags.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('unite-gtags')
    highlight default link uniteSource__Gtags_LineNr String
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - vimfiler.vim
" https://github.com/Shougo/vimfiler.vim.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vimfiler.vim')
    let neobundle#hooks.on_source =
                \ s:plugin_rcs.'vimfiler.rc.vim'
    nnoremap <F1> :VimFilerExplorer<CR>
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - vimshell.vim
" https://github.com/Shougo/vimshell.vim.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vimshell.vim')
    let g:vimshell_enable_smart_case = 1
    let g:vimshell_prompt            = '➤  '
    let g:vimshell_user_prompt       = 'fnamemodify(getcwd(), ":~")'
    let g:vimshell_right_prompt      = 'system("date")'
    let g:vimshell_data_directory    = $HOME."/tmp/vimshell"
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - vim-startify
" https://github.com/mhinz/vim-startify
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vim-startify')
    let g:startify_bookmarks     = [ '~/.vimrc','~/.zshrc','~/.vim/config','~/vimwiki/' ]
    let g:startify_custom_header = map(split(system("toilet -f pagga 42 | cowsay -d -f cowfee"), '\n'), '"   ". v:val') + ['','']
    let g:startify_skiplist      = [
                \ 'COMMIT_EDITMSG',
                \ $VIMRUNTIME .'/doc',
                \ 'bundle/.*/doc'
                \ ]
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin – emmet-vim
" https://github.com/mattn/emmet-vim
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('emmet-vim')
    let g:user_emmet_mode       = 'a'
    let g:user_emmet_leader_key = '<c-e>'
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - gundo.vim
" http://sjl.bitbucket.org/gundo.vim/
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('gundo.vim')
    nnoremap <F3> :GundoToggle<CR>
    let g:gundo_right        = 1
    let g:gundo_auto_preview = 1
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - Rainbow-Parentheses-Improved-and2
" https://github.com/farseer90718/Rainbow-Parentheses-Improved-and2.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('Rainbow-Parentheses-Improved-and2')
    let g:rainbow_active          = 1
    let g:rainbow_load_separately = [
                \   [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
                \   [ 'tex' , [['(', ')'], ['\[', '\]']] ],
                \   [ 'lisp' , [] ],
                \   [ 'html' , [] ],
                \   [ 'css' , [] ],
                \   [ 'markdown', [] ],
                \   [ 'vimwiki', [] ],
                \   ]
    let g:lisp_rainbow            = 1
    nnoremap <F10> :Rainbow<CR>
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - vim-mark
" https://github.com/LnL7/vim-mark.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vim-mark')
    nmap <Leader>m <Plug>MarkSet
    nmap <Leader>n <Plug>MarkClear
    nmap <Leader>r <Plug>MarkRegex
    let g:mwIgnoreCase                 = 1
    let g:mwAutoLoadMarks              = 1
    let g:mwAutoSaveMarks              = 1
    let g:mwDefaultHighlightingNum     = 20
    let g:mwDefaultHighlightingPalette = 'maximum'
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - vim-latex-suite
" https://github.com/gerw/vim-latex-suite.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vim-latex-suite')
    let g:tex_flavor              = 'latex'
    let g:Tex_DefaultTargetFormat = 'pdf'
    let g:Tex_AutoFolding         = 0
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - vim-indent-guides
" https://github.com/nathanaelkane/vim-indent-guides.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vim-indent-guides')
    " autocmd VimEnter,Colorscheme * hi IndentGuidesOdd  guibg = darkyellow ctermbg = darkyellow
    " autocmd VimEnter,Colorscheme * hi IndentGuidesEven guibg = darkblue ctermbg   = darkblue
    let g:indent_guides_auto_colors           = 1
    let g:indent_guides_start_level           = 1
    let g:indent_guides_guide_size            = 1
    let g:indent_guides_enable_on_vim_startup = 1
    let g:indent_guides_exclude_filetypes     = ['w3m', 'help', 'tagbar', 'unite', 'vimfiler', 'startify', 'taskreport', 'calendar']
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - taghighlight
" http://www.cgtk.co.uk/vim-scripts/taghighlight
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('taghighlight')
    let neobundle#hooks.on_source =
                \ s:plugin_rcs.'taghighlight.rc.vim'
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - tagbar
" https://github.com/majutsushi/tagbar
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('tagbar')
    nnoremap <F2> :TagbarToggle<CR>
    let neobundle#hooks.on_source =
                \ s:plugin_rcs.'tagbar.rc.vim'
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - neocomplete.vim
" https://github.com/Shougo/neocomplete.vim.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('neocomplete.vim')
    let neobundle#hooks.on_source =
                \ s:plugin_rcs.'neocomplete.rc.vim'
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - neosnippet.vim
" https://github.com/shougo/neosnippet.vim
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('neosnippet.vim')
    let neobundle#hooks.on_source =
                \ s:plugin_rcs.'neosnippet.rc.vim'
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - YouCompleteMe
" https://github.com/Valloric/YouCompleteMe.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('YouCompleteMe')
    let neobundle#hooks.on_source =
                \ s:plugin_rcs.'youcompleteme.rc.vim'
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - jedi-vim
" https://github.com/davidhalter/jedi-vim.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('jedi-vim')
    let g:jedi#auto_vim_configuration = 0
    let g:jedi#popup_on_dot = 0
    let g:jedi#popup_select_first = 0
    let g:jedi#completions_enabled = 1
    let g:jedi#completions_command = ''
    let g:jedi#show_call_signatures = 1
    let g:jedi#goto_assignments_command = '<leader>pa'
    let g:jedi#goto_definitions_command = '<leader>pd'
    let g:jedi#documentation_command = '<leader>pk'
    let g:jedi#usages_command = '<leader>pu'
    let g:jedi#rename_command = '<leader>pr'
    call neobundle#untap()
endif

"------------------------------------------------------------------------------------------------------------------------------------
"                                  ..                                  _                      __ _                    _   _
"               ......'...          ...                           __ _(_)_ __    __ ___ _ _  / _(_)__ _ _  _ _ _ __ _| |_(_)___ _ _
"                    ...,;,..       ..;,.       .                 \ V / | '  \  / _/ _ \ ' \|  _| / _` | || | '_/ _` |  _| / _ \ ' \
"                       ..::.       .;c:...     ..                 \_/|_|_|_|_| \__\___/_||_|_| |_\__, |\_,_|_| \__,_|\__|_\___/_||_|
"             ...       .,,.       .,:c.        .'.                                               |___/
"      .......,:c.      ,oo.     .lxd:.        ..';.
"             ..,.      d0kkdl;;ooxxo:...    .':cc,.
"               ..dd::;d:;'..,.,..',':;,;okxxkdoc...
"       ..      .lOkl;,.......  ....,...,ccodl.        ..
"    .'cox'    .ll;'...               ..'''',,.      .',
"  .'.......,:lo:,...                   ...':kx:..,;cxc.
" .         ;dl:...        ..             ..,dox;,::,'.
"           ':;'..      ..       ..       .,':ll,.
"   .,l,...;xc,.       '. .........      .,::,;,.       ...
"  ';..  ..;l;.'       ,..,.     .       ',. .;c:'.'''....
" ..       .,,'.       ';,;             .l,'',:c:llxc'...
"           ;o'.       .;:,.           'o,....,;coll,..
"     .....;oxl..      ...',.        'c:......';::c;'.
"     l,. .  .::,.      ..  .'''.',;:;.......';ccc:.
"    '.       .;:,.       ....       .....',;clc:'.
"    .       .:c;,'.         ...........',;:lol'.
"         .........':.          .....',,;cl:;'.
"         .'        .',..             ......                                     _        _   _           ___
"         ...        ....... .                                     _ __  ___  __| |___ __| | | |__ _  _  | __|_ _ _ _ ___ ___ ___ _ _
"           .        ,;'.. ..'..                                  | '  \/ _ \/ _` / -_) _` | | '_ \ || | | _/ _` | '_(_-</ -_) -_) '_|
"                   .:,..... .,,...                               |_|_|_\___/\__,_\___\__,_| |_.__/\_, | |_|\__,_|_| /__/\___\___|_|
"         .       ..'...........                                                                    |__/
"           ...............
"-------------------------------------------------------------------------------------------------------------------------------------
" vim:ts=4:sw=4:tw=78:ft=vim:fdm=indent:fdl=1
