"-----------------------------------------------------------------
" variables setting
"-----------------------------------------------------------------
    syntax on
    set langmenu=en_US.UTF-8
    set undodir=~/tmp/.undo
    set undofile
    set backupdir=~/tmp/
    set directory=~/tmp/
    set shell=bash
    set nocompatible
    set number
    set relativenumber
    set cursorline
    set cursorcolumn
    set concealcursor=nc
    set shiftwidth=4 et
    set shiftround
    set softtabstop=4
    set tabstop=4
    set smarttab
    set autoread
    set autoindent
    set autochdir
    set nowrap
    set showbreak="↪ "
    set backupcopy=yes
    set ignorecase
    " set smartcase
    set wildmenu
    set wildignorecase
    set wildmode=list,full
    set wrapscan
    set incsearch
    set hlsearch
    set noerrorbells
    set novisualbell
    set clipboard=autoselectplus
    set t_vb=
    set magic
    set timeoutlen=2000
    set hidden
    set smartindent
    set backspace=indent,eol,start
    set cmdheight=1
    set laststatus=2
    set noshowmode
    set showcmd
    set foldenable
    set foldmethod=indent
    set foldcolumn=0
    set foldlevelstart=99
    set scroll=15
    " set scrolloff=5
    set completeopt=longest,menuone
    set viminfo='10,\"100,:20,%,!
    set cscopequickfix=s-,c-,d-,i-,t-,e-
    set updatetime=6000
    set lines=55 columns=150
    " set t_Co=256
    set background=dark
    set guioptions=Ac
    set pastetoggle=<F4>
    set splitright
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store
    set path+=./include,../include,/opt/cuda/include
    execute "path+=/usr/lib/modules/".system('uname -r')[:-2]."/build/include"
    execute "path+=/usr/lib/modules/".system('uname -r')[:-2]."/build/arch/x86/include"
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
    " source $VIMRUNTIME/mswin.vim                       " <C-c><C-v> copy paste
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
