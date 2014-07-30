"-----------------------------------------------------------------
" variables setting
"-----------------------------------------------------------------
    syntax on
    set autochdir
    set autoindent
    set autoread
    set background=dark
    set backspace=indent,eol,start
    set backupcopy=yes
    set backupdir=~/tmp/.backup//
    set clipboard=autoselectplus
    set cmdheight=1
    set completeopt=longest,menuone
    set concealcursor=nc
    set cscopequickfix=s-,c-,d-,i-,t-,e-
    set cursorcolumn
    set cursorline
    set directory=~/tmp/.swap//
    set foldcolumn=0
    set foldenable
    set foldlevelstart=99
    set foldmethod=indent
    set guioptions=Ac
    set hidden
    set hlsearch
    set ignorecase
    set incsearch
    set langmenu=en_US.UTF-8
    set laststatus=2
    set list
    set listchars=tab:➤-,trail:␣,precedes:→
    set lines=55 columns=150
    set magic
    set nocompatible
    set noerrorbells
    set noswapfile
    set noshowmode
    set novisualbell
    set nowrap
    set number
    set pastetoggle=<F4>
    set relativenumber
    set scroll=15
    " set scrolloff=5
    set shell=bash
    set shiftround
    set shiftwidth=4 et
    set showbreak="↪ "
    set showcmd
    set smartcase
    set smartindent
    set smarttab
    set softtabstop=4
    set splitright
    " set t_Co=256
    set t_vb=
    set tabstop=4
    set timeoutlen=2000
    set undodir=~/tmp/.undo//
    set undofile
    set updatetime=6000
    set viminfo='10,\"100,:20,%,!
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store
    set wildignorecase
    set wildmenu
    set wildmode=list,full
    set wrapscan

    set path+=./include,../include,/opt/cuda/include
    execute 'set path+=/usr/lib/modules/'.system('uname -r')[:-2].'/build/include'
    execute 'set path+=/usr/lib/modules/'.system('uname -r')[:-2].'/build/arch/x86/include'
    if executable('ag')
        set grepprg=ag\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow
        set grepformat=%f:%l:%c:%m
    endif

    " set csprg=gtags-cscope
    " cscope add ~/src/linux-3.11.6/GTAGS
    " cscope add ~/src/linux-3.11.6/cscope.out
    set cscopequickfix=s-,c-,d-,i-,t-,e-,g-
    set tags+=~/.vim/tags
"-----------------------------------------------------------------
" load configurations
"-----------------------------------------------------------------
    source ~/.vim/config/SystemDetect.vim              " config accordingly
    source ~/.vim/config/AutoCommand.vim               " autocmds
    source ~/.vim/config/MapCommand.vim                " map and command
    source ~/.vim/config/GlobalVariables.vim           " global variable set
    runtime ftplugin/man.vim                           " better man page
"-----------------------------------------------------------------
" Plugin Bundles
"-----------------------------------------------------------------
    filetype off
    set runtimepath+=~/.vim/bundle/neobundle.vim/
    call neobundle#rc(expand('~/.vim/bundle/'))
    source ~/.vim/config/Bundles.vim
    filetype plugin indent on
    if has('gui_running')
        colorscheme seoul256
        " colorscheme solarized
    else
        if &term =~ 'linux'
            colorscheme darkblue
        else
            colorscheme solarized
        endif
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
