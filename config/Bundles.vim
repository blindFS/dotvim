"-----------------------------------------------------------------
" utilities
"-----------------------------------------------------------------
    NeoBundle 'tpope/vim-eunuch'
    NeoBundle 'tpope/vim-fugitive'
    NeoBundle 'blueyed/vim-diminactive'
    NeoBundle 'junegunn/vim-peekaboo'
    NeoBundle 'blindFS/vim-taskwarrior', {
                \ 'external_commands' : 'task'
                \ }
    NeoBundleLazy 'blindFS/vim-translator', {
                \ 'mappings' : '<Plug>Translate'
                \ }
    NeoBundleLazy 'chrisbra/NrrwRgn', {
                \ 'commands' : ['NR', 'NRP']
                \ }
    NeoBundleLazy 'itchyny/calendar.vim', {
                \ 'commands' : { 'name' : 'Calendar',
                \   'complete' : 'customlist,calendar#argument#complete'}
                \ }
    NeoBundleLazy 'arecarn/crunch', {
                \ 'commands' : ['Crunch', 'CrunchBlock', 'CrunchLine'],
                \ 'mappings' : '<Plug>Crunch'
                \ }
    NeoBundleLazy 'DrawIt', {
                \ 'commands' : 'DrawIt',
                \ 'mappings' : '<Plug>DrawIt'
                \ }
    NeoBundleLazy 'thinca/vim-ref', {
                \ 'commands' : {'name' : 'Ref',
                \   'complete' : 'customlist,ref#complete'},
                \ 'unite_sources' : 'ref',
                \ 'mappings' : '<Plug>(ref-'
                \ }
    NeoBundleLazy 'LnL7/vim-mark', {
                \ 'commands' : ['Mark', 'Marks', 'MarkClear', 'MarkSave', 'MarkLoad'],
                \ 'mappings' : '<Plug>Mark',
                \ 'disabled' : (&t_Co != 256 && !has('gui_running'))
                \ }
    NeoBundleLazy 'gregsexton/gitv', {
                \ 'commands' : 'Gitv',
                \ 'depends' : ['tpope/vim-fugitive']
                \ }
    NeoBundleLazy 'mhinz/vim-randomtag', {
                \ 'commands' : 'Random'
                \ }
"-----------------------------------------------------------------
" lib
"-----------------------------------------------------------------
    NeoBundleLazy 'mattn/webapi-vim'
"-----------------------------------------------------------------
" network
"-----------------------------------------------------------------
    NeoBundle 'mattn/gist-vim', {
                \ 'depends' : ['mattn/webapi-vim']
                \ }
    NeoBundleLazy 'jaxbot/github-issues.vim', {
                \ 'commands' : ['Gissues', 'Giedit', 'Giadd'],
                \ 'disabled' : !has('python')
                \ }
"-----------------------------------------------------------------
" frontend
"-----------------------------------------------------------------
    NeoBundleLazy 'mattn/emmet-vim', {
                \ 'filetypes' : [
                \   'html', 'css', 'xml', 'vimwiki', 'markdown']
                \ }
    NeoBundleLazy 'lilydjwg/colorizer', {
                \ 'commands' : 'ColorToggle'
                \ }
    NeoBundleLazy 'blindFS/vim-colorpicker', {
                \ 'commands' : 'ColorPicker',
                \ 'disabled' : !has('python')
                \ }
"-----------------------------------------------------------------
" Unite.vim
"-----------------------------------------------------------------
    NeoBundle 'Shougo/unite.vim'
    NeoBundleLazy 'Shougo/unite-build'
    NeoBundleLazy 'Shougo/vimfiler.vim', {
                \ 'depends' : 'Shougo/unite.vim',
                \ 'commands' : [
                \ { 'name' : 'VimFiler',
                \ 'complete' : 'customlist,vimfiler#complete' },
                \ { 'name' : 'VimFilerTab',
                \ 'complete' : 'customlist,vimfiler#complete' },
                \ { 'name' : 'VimFilerExplorer',
                \ 'complete' : 'customlist,vimfiler#complete' },
                \ { 'name' : 'Edit',
                \ 'complete' : 'customlist,vimfiler#complete' },
                \ { 'name' : 'Write',
                \ 'complete' : 'customlist,vimfiler#complete' },
                \ 'Read', 'Source'],
                \ 'mappings' : '<Plug>(vimfiler_',
                \ 'explorer' : 1,
                \ }
    NeoBundleLazy 'hewes/unite-gtags', {
                \ 'external_commands' : 'global',
                \ 'unite_sources' : 'gtags'
                \ }
    NeoBundleLazy 'Shougo/vesting', {
                \ 'unite_sources' : 'vesting'
                \ }
    NeoBundleLazy 'Shougo/unite-help', {
                \ 'unite_sources' : 'help'
                \ }
    NeoBundleLazy 'Shougo/unite-outline', {
                \ 'unite_sources' : 'outline'
                \ }
    NeoBundleLazy 'ujihisa/unite-colorscheme', {
                \ 'unite_sources' : 'colorscheme'
                \ }
    NeoBundleLazy 'ujihisa/unite-locate', {
                \ 'unite_sources' : 'locate'
                \ }
    NeoBundleLazy 'tsukkee/unite-tag', {
                \ 'unite_sources' : 'tag'
                \ }
    NeoBundleLazy 'tacroe/unite-mark', {
                \ 'unite_sources' : 'mark'
                \ }
    NeoBundleLazy 'blindFS/unite-workflow', {
                \ 'disabled' : !has('python'),
                \ 'unite_sources' : [
                \   'github', 'gist', 'v2ex',
                \   'reddit', 'youdao', 'apropos',
                \   'wikipedia', 'youtube', 'toilet',
                \   'emoji', 'music163', 'twitter',
                \   'douban', 'zhihu', 'turing',
                \   'dropbox'
                \ ],
                \ 'depends' : [
                \   'mattn/webapi-vim',
                \   'mattn/gist-vim',
                \   'jaxbot/github-issues.vim']
                \ }
    NeoBundleLazy 'blindFS/unite-character', {
                \ 'commands' : ['SearchUnicode', 'HTMLUnicode'],
                \ 'unite_sources' : 'character'
                \ }
"-----------------------------------------------------------------
" IDE features
"-----------------------------------------------------------------
    NeoBundleLazy 'scrooloose/syntastic', {
                \ 'insert' : 1
                \ }
    NeoBundleLazy 'gelguy/Cmd2.vim', {
                \ 'mappings' : ['nxo', ':', '/', '?']
                \ }
    NeoBundleLazy 'thinca/vim-quickrun', {
                \ 'commands' : 'QuickRun',
                \ 'mappings' : ['nxo', '<Plug>(quickrun)'],
                \ }
    NeoBundleLazy 'Shougo/vimshell.vim', {
                \ 'commands' : [{ 'name' : 'VimShell',
                \ 'complete' : 'customlist,vimshell#complete'},
                \ 'VimShellExecute', 'VimShellInteractive',
                \ 'VimShellCreate',
                \ 'VimShellTerminal', 'VimShellPop'],
                \ 'mappings' : '<Plug>(vimshell_'
                \ }
    NeoBundleLazy 'Shougo/neocomplete.vim', {
                \ 'depends' : ['Shougo/context_filetype.vim', 'ujihisa/neco-look'],
                \ 'insert' : 1,
                \ 'disabled' : (!has('lua') || v:version < 704)
                \ }
    NeoBundleLazy 'Shougo/neosnippet.vim', {
                \ 'depends' : ['Shougo/neosnippet-snippets', 'Shougo/context_filetype.vim'],
                \ 'insert' : 1,
                \ 'filetypes' : 'snippet',
                \ 'unite_sources' : [
                \ 'neosnippet', 'neosnippet/user', 'neosnippet/runtime'],
                \ }
    NeoBundleLazy 'Shougo/echodoc.vim', {
                \ 'insert' : 1
                \ }
    NeoBundleLazy 'davidhalter/jedi-vim', {
                \ 'filetypes' : ['python'],
                \ 'disabled' : !has('python')
                \ }
"-----------------------------------------------------------------
" appearance
"-----------------------------------------------------------------
    NeoBundle 'vim-airline/vim-airline'
    NeoBundle 'vim-airline/vim-airline-themes'
    NeoBundle 'ryanoasis/vim-devicons', {
                \ 'disabled' : !has('gui_running')
                \ }
    NeoBundle 'blindFS/Rainbow-Parentheses-Improved-and2'
    NeoBundle 'nathanaelkane/vim-indent-guides'
    NeoBundle 'mhinz/vim-signify'
    NeoBundleLazy 'blindFS/vim-regionsyntax', {
                \ 'filetypes' : ['vimwiki', 'markdown', 'tex', 'html', 'vim']
                \ }
    NeoBundleLazy 'sjl/gundo.vim', {
                \ 'commands' : 'GundoToggle'
                \ }
    NeoBundleLazy 'https://bitbucket.org/abudden/taghighlight', {
                \ 'type' : 'hg',
                \ 'filetypes' : ['c', 'cpp']
                \ }
"-----------------------------------------------------------------
" colorscheme
"-----------------------------------------------------------------
    NeoBundle 'tomasr/molokai'
    NeoBundle 'blindFS/flattr.vim'
"-----------------------------------------------------------------
" navigate
"-----------------------------------------------------------------
    NeoBundle 'Shougo/neomru.vim'
    NeoBundle 'blindFS/miscellaneous'
    NeoBundle 'Shougo/tabpagebuffer.vim'
    NeoBundleLazy 'Lokaltog/vim-easymotion', {
                \ 'mappings' : '<Plug>(easymotion-'
                \ }
    NeoBundleLazy 'majutsushi/tagbar', {
                \ 'commands' : 'TagbarToggle'
                \ }
"-----------------------------------------------------------------
" text trimming
"-----------------------------------------------------------------
    NeoBundleLazy 'tpope/vim-surround', {
                \ 'mappings' : [
                \ ['n', 'cs', 'ds', 'ys', 'yS'],
                \ ['x', 'S']]
                \ }
    NeoBundleLazy 'tpope/vim-speeddating', {
                \ 'mappings' : ['nxo', '<C-X>', '<C-A>']
                \ }
    NeoBundleLazy 'tpope/vim-repeat', {
                \ 'mappings' : '.'
                \ }
    NeoBundleLazy 'terryma/vim-multiple-cursors'
    NeoBundleLazy 'Chiel92/vim-autoformat', {
                \ 'commands' : 'Autoformat'
                \ }
    NeoBundleLazy 'Raimondi/delimitMate', {
                \ 'insert' : 1
                \ }
    NeoBundleLazy 'junegunn/vim-easy-align', {
                \ 'commands' : 'EasyAlign'
                \ }
    NeoBundleLazy 'tommcdo/vim-exchange', {
                \ 'mappings' : ['nx', '<Plug>(Exchange']
                \ }
    NeoBundleLazy 'osyo-manga/vim-jplus', {
                \ 'mappings' : '<Plug>(jplus'
                \ }
    NeoBundleLazy 'tyru/caw.vim', {
                \ 'mappings' : '<Plug>(caw'
                \ }
"-----------------------------------------------------------------
" textobj
"-----------------------------------------------------------------
    NeoBundleLazy 'gcmt/wildfire.vim', {
                \ 'mappings' : '<Plug>(wildfire-'
                \ }
    NeoBundleLazy 'thinca/vim-textobj-between', {
                \ 'depends' : 'kana/vim-textobj-user',
                \ 'mappings' : ['ox', 'ib', 'ab']
                \ }
    NeoBundleLazy 'kana/vim-textobj-function', {
                \ 'depends' : 'kana/vim-textobj-user',
                \ 'mappings' : ['ox', 'if', 'af']
                \ }
    NeoBundleLazy 'kana/vim-textobj-indent', {
                \ 'depends' : 'kana/vim-textobj-user',
                \ 'mappings' : ['ox', 'ii', 'ai']
                \ }
    NeoBundleLazy 'sgur/vim-textobj-parameter', {
                \ 'depends' : 'kana/vim-textobj-user',
                \ 'mappings' : ['ox', 'i,', 'a,']
                \ }
    NeoBundleLazy 'mattn/vim-textobj-url', {
                \ 'depends' : 'kana/vim-textobj-user',
                \ 'mappings' : ['ox', 'au', 'iu']}
    NeoBundleLazy 'bps/vim-textobj-python', {
                \ 'depends' : 'kana/vim-textobj-user',
                \ 'filetypes' : 'python'
                \ }
    NeoBundleLazy 'rbonvall/vim-textobj-latex', {
                \ 'depends' : 'kana/vim-textobj-user',
                \ 'filetypes' : 'tex'
                \ }
"-----------------------------------------------------------------
" filetype specific
"-----------------------------------------------------------------
    NeoBundleLazy 'derekwyatt/vim-scala', {
                \ 'filetypes' : 'scala'
                \ }
    NeoBundle 'tmux-plugins/vim-tmux', {
                \ 'external_commands' : 'tmux'
                \ }
    NeoBundleLazy 'hynek/vim-python-pep8-indent', {
                \ 'filetypes' : 'python',
                \ }
    NeoBundleLazy 'blindFS/vimwiki', {
                \ 'mappings' : '<Plug>Vimwiki'
                \ }
    NeoBundleLazy 'gerw/vim-latex-suite', {
                \ 'filetypes' : 'tex'
                \ }
    NeoBundleLazy 'blindFS/vim-markdown', {
                \ 'filetypes' : 'markdown'
                \ }
    NeoBundleLazy 'blindFS/vim-reveal', {
                \ 'filetypes' : 'markdown'
                \ }
    NeoBundleLazy 'eagletmt/neco-ghc', {
                \ 'filetypes' : 'haskell',
                \ 'external_commands' : 'ghc-mod'
                \ }
    NeoBundleLazy 'eagletmt/ghcmod-vim', {
                \ 'filetypes' : 'haskell'
                \ }
    NeoBundleLazy 'dag/vim2hs', {
                \ 'filetypes' : 'haskell'
                \ }
    NeoBundleLazy 'wannesm/wmgraphviz.vim', {
                \ 'filetypes' : 'dot'
                \ }
    NeoBundleLazy 'moll/vim-node', {
                \ 'filetypes' : 'javascript'
                \ }
    NeoBundleLazy 'elzr/vim-json', {
                \ 'filetypes' : 'json'
                \ }
    NeoBundleLazy 'marijnh/tern_for_vim', {
                \ 'filetypes' : 'javascript'
                \ }
    NeoBundleLazy 'https://bitbucket.org/kovisoft/slimv', {
                \ 'filetypes' : ['lisp', 'scheme'],
                \ 'type' : 'hg'
                \ }

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
" vim:ts=4:sw=4:tw=78:ft=vim:fdm=indent:fdl=0
