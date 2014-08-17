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
                \       "delimiter_format" : ' %d '
                \   }
                \}
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
" plugin - vim-choosewin
" https://github.com/t9md/vim-choosewin.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vim-choosewin')
    let g:choosewin_overlay_enable          = 1
    let g:choosewin_overlay_clear_multibyte = 1
    let g:choosewin_statusline_replace      = 1
    let g:choosewin_tabline_replace         = 1
    let g:choosewin_color_overlay           = {
                \ 'gui': ['DodgerBlue3', 'DodgerBlue3' ],
                \ 'cterm': [ 25, 25 ]
                \ }
    let g:choosewin_color_overlay_current   = {
                \ 'gui': ['firebrick1', 'firebrick1' ],
                \ 'cterm': [ 124, 124 ]
                \ }
    nmap  <leader>q  <Plug>(choosewin)
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
    nnoremap <C-N> :call multiple_cursors#new("n")<CR>
    xnoremap <C-N> :<C-U>call multiple_cursors#new("n")<CR>
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - eclim
" http://eclim.org/gettingstarted.html
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('eclim')
    let g:EclimJavaCompleteCaseSensitive = 0
    let g:EclimCompletionMethod          = 'omnifunc'
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
    let g:neobundle#hooks.on_source =
                \ '~/.vim/config/plugins/easy-align.rc.vim'
    vnoremap <silent> <Enter> :EasyAlign<CR>
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - vim-translator
" https://github.com/farseer90718/vim-translator.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vim-translator')
    let g:translate_cmd = 'ydcv'
    vmap T <Plug>Translate
    vmap R <Plug>TranslateReplace
    vmap P <Plug>TranslateSpeak
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - vim-taskwarrior
" https://github.com/farseer90718/vim-taskwarrior.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vim-taskwarrior')
    let g:task_report_name              = 'long'
    let g:task_highlight_field          = 1
    let g:task_field_highlight_advanced = ''
    let g:task_default_prompt           = ['description', 'due', 'priority', 'tag', 'depend']
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
    let g:neobundle#hooks.on_source =
                \ '~/.vim/config/plugins/region-syntax.rc.vim'
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - context_filetype.vim
" https://github.com/Shougo/context_filetype.vim.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('context_filetype.vim')
    let g:neobundle#hooks.on_source =
                \ '~/.vim/config/plugins/context-filetype.rc.vim'
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
" plugin - vim-github-dashboard
" https://github.com/junegunn/vim-github-dashboard.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('vim-github-dashboard')
    let g:github_dashboard = {
                \ 'username': 'farseer90718',
                \ 'api_open_timeout': 10,
                \ 'api_read_timeout': 20,
                \ 'statusline': 0}
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
" plugin - sexy_scroller.vim
" https://github.com/joeytwiddle/sexy_scroller.vim.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('sexy_scroller.vim')
    let g:SexyScroller_EasingStyle = 2
    let g:SexyScroller_ScrollTime  = 5
    let g:SexyScroller_MaxTime     = 500
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
                \ '~/.vim/config/plugins/vimwiki.rc.vim'
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
                \ '~/.vim/config/plugins/signify.rc.vim'
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
    let g:airline_branch_prefix                       = '  '
    let g:airline_readonly_symbol                     = '  '
    let g:airline_linecolumn_prefix                   = '  '
    let g:airline_paste_symbol                        = ' ✍  PASTE'
    let g:airline#extensions#whitespace#symbol        = '✷'
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
    let neobundle#hooks.on_source =
                \ '~/.vim/config/plugins/unite.rc.vim'
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
                \ '~/.vim/config/plugins/vimfiler.rc.vim'
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
" plugin - clever-f.vim
" https://github.com/rhysd/clever-f.vim.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('clever-f.vim')
    let g:clever_f_chars_match_any_signs = ';'
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
                \ '~/.vim/config/plugins/taghighlight.rc.vim'
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - tagbar
" https://github.com/majutsushi/tagbar
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('tagbar')
    nnoremap <F2> :TagbarToggle<CR>
    let neobundle#hooks.on_source =
                \ '~/.vim/config/plugins/tagbar.rc.vim'
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - neocomplete.vim
" https://github.com/Shougo/neocomplete.vim.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('neocomplete.vim')
    let neobundle#hooks.on_source =
                \ '~/.vim/config/plugins/neocomplete.rc.vim'
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - neosnippet.vim
" https://github.com/shougo/neosnippet.vim
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('neosnippet.vim')
    let neobundle#hooks.on_source =
                \ '~/.vim/config/plugins/neosnippet.rc.vim'
    call neobundle#untap()
endif
"--------------------------------------------------------------------------------------------------------------
" plugin - YouCompleteMe
" https://github.com/Valloric/YouCompleteMe.git
"--------------------------------------------------------------------------------------------------------------
if neobundle#tap('YouCompleteMe')
    let neobundle#hooks.on_source =
                \ '~/.vim/config/plugins/youcompleteme.rc.vim'
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