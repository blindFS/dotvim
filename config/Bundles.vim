"-----------------------------------------------------------------
" utilities
"-----------------------------------------------------------------
    NeoBundleFetch 'Shougo/neobundle.vim'
    NeoBundle 'chrisbra/NrrwRgn'
    NeoBundle 'tpope/vim-afterimage'
    NeoBundle 'tpope/vim-eunuch'
    NeoBundle 'itchyny/calendar.vim'
    NeoBundle 'arecarn/crunch'
    NeoBundle 'benmills/vimux'
    NeoBundle 'blueyed/vim-diminactive'
    NeoBundle 'DrawIt'
    NeoBundle 'thinca/vim-ref'
    NeoBundle 'LnL7/vim-mark',                {'disabled': (&t_Co != 256 && !has('gui_running'))}
    NeoBundle 'tpope/vim-fugitive',           {'external_commands': 'git'}
    NeoBundle 'gregsexton/gitv',              {'depends': ['tpope/vim-fugitive']}
    NeoBundle 'farseer90718/vim-taskwarrior', {'external_commands': 'task'}
"-----------------------------------------------------------------
" network
"-----------------------------------------------------------------
    NeoBundle 'junegunn/vim-github-dashboard'
    NeoBundle 'farseer90718/vim-translator'
    NeoBundle 'mattn/gist-vim',           {'depends': ['mattn/webapi-vim']}
    NeoBundle 'kakkyz81/evervim',         {'disabled': (!has('python'))}
    NeoBundle 'jaxbot/github-issues.vim', {'disabled': (!has('python'))}
"-----------------------------------------------------------------
" frontend
"-----------------------------------------------------------------
    NeoBundle 'mattn/emmet-vim'
    NeoBundle 'greyblake/vim-preview'
    NeoBundle 'lilydjwg/colorizer'
    NeoBundle 'farseer90718/vim-colorpicker', {'disabled': (!has('python'))}
"-----------------------------------------------------------------
" Unite.vim
"-----------------------------------------------------------------
    NeoBundle 'Shougo/vesting'
    NeoBundle 'Shougo/vimfiler.vim',              {'depends': 'Shougo/unite.vim'}
    NeoBundle 'hewes/unite-gtags',                {'depends': 'Shougo/unite.vim'}
    NeoBundleLazy 'Shougo/unite-help',            {'autoload': {'unite_sources': 'help'}}
    NeoBundleLazy 'Shougo/unite-outline',         {'autoload': {'unite_sources': 'outline'}}
    NeoBundleLazy 'ujihisa/unite-colorscheme',    {'autoload': {'unite_sources': 'colorscheme'}}
    NeoBundleLazy 'ujihisa/unite-locate',         {'autoload': {'unite_sources': 'locate'}}
    NeoBundleLazy 'tsukkee/unite-tag',            {'autoload': {'unite_sources': 'tag'}}
    NeoBundleLazy 'tacroe/unite-mark',            {'autoload': {'unite_sources': 'mark'}}
    NeoBundleLazy 'farseer90718/unite-apropos',   {'autoload': {'unite_sources': 'apropos'}}
    NeoBundleLazy 'farseer90718/unite-workflow',  {'autoload': {'unite_sources': 'github'}}
    NeoBundleLazy 'farseer90718/unite-character', {'autoload': {'commands': ['SearchUnicode', 'HTMLUnicode'], 'unite_sources': 'character'}}
    call unite#custom#source('file, file/new, buffer, file_rec, command, function', 'matchers', 'matcher_fuzzy')
"-----------------------------------------------------------------
" IDE features
"-----------------------------------------------------------------
    NeoBundle 'scrooloose/syntastic'
    NeoBundle 'thinca/vim-quickrun'
    NeoBundle 'cmdline-completion'
    NeoBundle 'gtags.vim',                   {'external_commands': 'global'}
    NeoBundle 'Shougo/vimshell.vim',         {'depends': ['Shougo/vimproc', 'vim-jp/vital.vim']}
    NeoBundle 'Shougo/context_filetype.vim', {'depends': 'Shougo/neocomplete.vim'}
    NeoBundle 'Shougo/neocomplete.vim',      {'disabled': (!has('lua') || v:version < 704)}
    NeoBundle 'Shougo/neosnippet'
    NeoBundle 'Shougo/neosnippet-snippets',  {'depends': 'Shougo/neosnippet'}
    NeoBundle 'Valloric/YouCompleteMe',      {'autoload': {'filetypes':['c', 'cpp', 'python']},
                \ 'build_commands': 'cmake',
                \ 'build': './install.sh --clang-completer',
                \ 'disabled': (!has('python'))}
"-----------------------------------------------------------------
" appearance
"-----------------------------------------------------------------
    NeoBundle 'bling/vim-airline'
    NeoBundle 'severin-lemaignan/vim-minimap'
    NeoBundle 'joeytwiddle/sexy_scroller.vim'
    NeoBundle 'farseer90718/Rainbow-Parentheses-Improved-and2'
    NeoBundle 'farseer90718/vim-regionsyntax'
    NeoBundle 'nathanaelkane/vim-indent-guides'
    NeoBundle 'sjl/gundo.vim'
    NeoBundle 'osyo-manga/vim-over'
    NeoBundle 'mhinz/vim-signify',                          {'external_commands': 'git'}
    NeoBundle 'tomasr/molokai',                             {'script_type': 'colors'}
    NeoBundle 'junegunn/seoul256.vim',                      {'script_type': 'colors'}
    NeoBundle 'altercation/vim-colors-solarized',           {'script_type': 'colors'}
    NeoBundle 'farseer90718/flattr.vim',                    {'script_type': 'colors'}
    NeoBundle 'mattn/vimtweak',                             {'disabled': has('unix')}
    NeoBundle 'https://bitbucket.org/abudden/taghighlight', {'type': 'hg' }
"-----------------------------------------------------------------
" navigate
"-----------------------------------------------------------------
    " NeoBundle 'Lokaltog/vim-easymotion'
    NeoBundle 'rhysd/clever-f.vim'
    NeoBundle 't9md/vim-choosewin'
    NeoBundle 'majutsushi/tagbar'
    NeoBundle 'mhinz/vim-startify'
    NeoBundle 'kien/ctrlp.vim'
"-----------------------------------------------------------------
" text trimming
"-----------------------------------------------------------------
    NeoBundle 'tpope/vim-surround'
    NeoBundle 'tpope/vim-speeddating'
    NeoBundle 'tpope/vim-repeat'
    NeoBundle 'terryma/vim-multiple-cursors'
    NeoBundle 'Chiel92/vim-autoformat'
    NeoBundle 'Raimondi/delimitMate'
    NeoBundle 'junegunn/vim-easy-align'
    NeoBundle 'tommcdo/vim-exchange'
    NeoBundle 'renumber.vim'
    NeoBundle 'tComment'
"-----------------------------------------------------------------
" textobj
"-----------------------------------------------------------------
    NeoBundle 'gcmt/wildfire.vim'
    NeoBundle 'coderifous/textobj-word-column.vim'
    NeoBundle 'thinca/vim-textobj-between', {'depends': 'kana/vim-textobj-user'}
    NeoBundle 'kana/vim-textobj-function',  {'depends': 'kana/vim-textobj-user'}
    NeoBundle 'kana/vim-textobj-indent',    {'depends': 'kana/vim-textobj-user'}
    NeoBundle 'sgur/vim-textobj-parameter', {'depends': 'kana/vim-textobj-user'}
    NeoBundle 'mattn/vim-textobj-url',      {'depends': 'kana/vim-textobj-user'}
"-----------------------------------------------------------------
" filetype specific
"-----------------------------------------------------------------
    NeoBundle 'farseer90718/miscellaneous'
    NeoBundle 'vimwiki/vimwiki'
    NeoBundle 'moll/vim-node'
    NeoBundleLazy 'gerw/vim-latex-suite',                 {'autoload': {'filetypes': ['tex']}}
    NeoBundleLazy 'vim-perl/vim-perl',                    {'autoload': {'filetypes': ['perl']}}
    NeoBundleLazy 'farseer90718/vim-markdown',            {'autoload': {'filetypes': ['markdown']}}
    NeoBundleLazy 'farseer90718/vim-reveal',              {'autoload': {'filetypes': ['markdown']}}
    NeoBundleLazy 'eagletmt/neco-ghc',                    {'autoload': {'filetypes': ['haskell']}, 'external_commands': 'ghc-mod'}
    NeoBundleLazy 'eagletmt/ghcmod-vim',                  {'autoload': {'filetypes': ['haskell']}}
    NeoBundleLazy 'dag/vim2hs',                           {'autoload': {'filetypes': ['haskell']}}
    NeoBundleLazy 'wannesm/wmgraphviz.vim',               {'autoload': {'filetypes': ['dot']}}
    NeoBundleLazy 'marijnh/tern_for_vim',                 {'autoload': {'filetypes': ['javascript']}}
    NeoBundleLazy 'eclim',                                {'autoload': {'filetypes': ['java']}}
    NeoBundleLazy 'https://bitbucket.org/kovisoft/slimv', {'autoload': {'filetypes': ['lisp', 'scheme']}, 'type': 'hg'}

    NeoBundleCheck
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
