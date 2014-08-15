"-----------------------------------------------------------------
" Autocommands
"-----------------------------------------------------------------
" miscellaneous
    autocmd BufWinEnter        *                         setlocal formatoptions-=o | setlocal formatoptions+=j
    autocmd BufRead,BufNewFile *.less                    setlocal filetype=css
    autocmd BufRead,BufNewFile *.ejs                     setlocal filetype=html
    autocmd Filetype           w3m,tagbar,unite,startify setlocal nocursorcolumn
    autocmd FileType           lisp,javascript           setlocal tabstop=2 shiftwidth=2
    autocmd FileType           lisp                      let      b:delimitMate_autoclose = 0
    autocmd FileType           vim                       nnoremap <buffer> K :help <CR>
    autocmd FileType           vim                       vnoremap <buffer> K <ESC>:execute "help ".GetVisualSelection()<CR>
    autocmd Syntax             man                       setlocal nomodifiable | setlocal readonly
    augroup haskmap
        autocmd!
        autocmd FileType haskell               inoremap <C-h>l <ESC>g_aa<ESC>C<Space>-><Space>
        autocmd FileType haskell               inoremap <C-h>h <ESC>g_aa<ESC>C<Space><-<Space>
        autocmd FileType haskell               inoremap <C-h>k <ESC>g_aa<ESC>C<Space>::<Space>
        autocmd FileType haskell               inoremap <C-h>j <ESC>g_aa<ESC>C<Space>=><Space>
    augroup END

" number/relativenumber
    autocmd InsertLeave * if &number|setlocal relativenumber|endif
    autocmd InsertEnter * setlocal norelativenumber

" folding
    let g:xml_syntax_folding               = 1
    autocmd FileType html setlocal foldmethod=manual
    autocmd Filetype vimwiki,perl,c,cpp,java,javascript,css,zsh,lua,json
                \ setlocal foldmethod=marker | setlocal foldmarker={,}

" restore
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
    autocmd BufReadPost * silent! loadview

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
