"-----------------------------------------------------------------
" reference
"-----------------------------------------------------------------
    nnoremap <leader>cg :execute 'cscope find g '.expand('<cword>')<CR>
    nnoremap <leader>cs :execute 'cscope find s '.expand('<cword>')<CR>
    nnoremap <leader>cc :execute 'cscope find c '.expand('<cword>')<CR>
    nnoremap <leader>ct :execute 'cscope find t '.expand('<cword>')<CR>
    nnoremap <leader>cf :execute 'cscope find f '.expand('<cword>')<CR>
    nnoremap <leader>ci :execute 'cscope find i '.expand('<cword>')<CR>
    vnoremap <leader>cg <ESC>:execute 'cscope find g '.GetVisualSelection()<CR>
    vnoremap <leader>cs <ESC>:execute 'cscope find s '.GetVisualSelection()<CR>
    vnoremap <leader>cc <ESC>:execute 'cscope find c '.GetVisualSelection()<CR>
    vnoremap <leader>ct <ESC>:execute 'cscope find t '.GetVisualSelection()<CR>
    vnoremap <leader>cf <ESC>:execute 'cscope find f '.GetVisualSelection()<CR>
    vnoremap <leader>ci <ESC>:execute 'cscope find i '.GetVisualSelection()<CR>
"-----------------------------------------------------------------
" go head or end of line
"-----------------------------------------------------------------
    nnoremap gh ^
    nnoremap gl $
    vnoremap gh ^
    vnoremap gl $
"-----------------------------------------------------------------
" add sth to end of line
"-----------------------------------------------------------------
    nnoremap '; mzA;<esc>`z
    nnoremap ', mzA,<esc>`z
    nnoremap '. mzA.<esc>`z
"-----------------------------------------------------------------
" tab/buffer control
"-----------------------------------------------------------------
    nmap <C-TAB>        :tabnext<CR>
    nmap <C-S-TAB>      :tabprevious<CR>
    nnoremap ]b         :bnext<CR>
    nnoremap [b         :bprevious<CR>
    nnoremap ]t         :tabnext<CR>
    nnoremap [t         :tabprevious<CR>
    nnoremap <Leader>dd :Bclose!<CR>
    nnoremap <Leader>td :tabclose!<CR>
    nnoremap <leader>tc :tabnew<CR>
"-----------------------------------------------------------------
" window control
"-----------------------------------------------------------------
    nnoremap <Leader>s :split<CR>
    nnoremap <Leader>v :vsplit<CR>
    nnoremap <C-l> <C-w>L
    nnoremap <C-h> <C-w>H
    nnoremap <C-j> <C-w>J
    nnoremap <C-k> <C-w>K
    nnoremap <C-w>, 10<C-w><
    nnoremap <C-w>. 10<C-w>>
    nnoremap <C-w>= 10<C-w>+
    nnoremap <C-w>- 10<C-w>-
"-----------------------------------------------------------------
" miscellaneous
"-----------------------------------------------------------------
    " toggle fold
    nnoremap <silent><space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
    " select pasted area
    nnoremap <expr> gpv '`['.strpart(getregtype(), 0, 1).'`]'
    " command hist
    cmap <C-f> <C-f>h:call <SID>GetCmdHis()<CR>
        function! s:GetCmdHis()
            let @/ = getline('.')
            normal! NN
        endfunction
    " spell correction
    nnoremap <C-y> :call <SID>SpellCorrect()<CR>
        function! s:SpellCorrect()
            let oldspell = &spell
            set spell
            normal! 1z=
            let &spell = oldspell
        endfunction
"-----------------------------------------------------------------
" Selection
"-----------------------------------------------------------------
    function! GetVisualSelection()
        let [s:lnum1, s:col1] = getpos("'<")[1:2]
        let [s:lnum2, s:col2] = getpos("'>")[1:2]
        let s:lines = getline(s:lnum1, s:lnum2)
        let s:lines[-1] = s:lines[-1][: s:col2 - (&selection == 'inclusive' ? 1 : 2)]
        let s:lines[0] = s:lines[0][s:col1 - 1:]
        return join(s:lines, ' ')
    endfunction
"-----------------------------------------------------------------
" movement
"-----------------------------------------------------------------
    inoremap <C-b> <esc>Bi
    inoremap <C-f> <esc>eWi

    nnoremap k gk
    nnoremap j gj
    nnoremap gk k
    nnoremap gj j

    vnoremap k gk
    vnoremap j gj
    vnoremap gk k
    vnoremap gj j
"-----------------------------------------------------------------
" source
"-----------------------------------------------------------------
    vnoremap <Leader>S y:execute @@<CR>
    nnoremap <Leader>S :execute getline('.')<CR>
"-----------------------------------------------------------------
" commands
"-----------------------------------------------------------------
    command! Pcd :cd %:p:h
    command! Zeal :call system('zeal -q '.expand('<cword>'))
    command! -complete=file -nargs=1 Rjpg :read !jp2a <q-args>
    command! Xopen :call system('xdg-open '.expand('%'))
    command! CtagsUpdate :cd ~/.vim | execute '!ctags -R '.$PWD
    command! AppendModeLine :call AppendModeline()
        function! AppendModeline()
            let ml= " vim:ts=".&tabstop.":sw=".&shiftwidth.":tw=".&textwidth.":ft=".&filetype.":fdm=".&foldmethod.":fdl=".&foldlevel
            let ml= substitute(&commentstring, "%s", ml, "")
            call append(line("$"), ml)
        endfunction
    command! PluginConfig :call PluginAddComment()
        function! PluginAddComment()
            let line = getline('.')
            exec 'e ~/.vim/config/PluginsConfig.vim'
            call s:add_commont(line)
        endfunction

        function! s:add_commont(line)
            let line = a:line
            if line =~? '^\s*NeoBundle.*$'
                let arg = matchstr(line, "'".'\zs[^'."'".']*\ze'."'").matchstr(line,'"\zs[^"]*\ze"')
                let [uri, name] = s:parse_name(arg)
                if search('plugin - '.name, 'w') != 0
                    return
                endif
                call append(0, ['"--------------------------------------------------------------------------------------------------------------',
                            \ '" plugin - '.name,
                            \ '" '.uri,
                            \ '"--------------------------------------------------------------------------------------------------------------',
                            \ "if neobundle#tap('".name."')",
                            \ '    call neobundle#untap()',
                            \ 'endif'
                            \ ])
                5
            endif
        endfunction

        function! s:parse_name(arg)
            let arg = a:arg
            let git_proto = 'https'
            if    arg =~? '^\s*\(gh\|github\):\S\+'
            \  || arg =~? '^[a-z0-9][a-z0-9-]*/[^/]\+$'
                let uri = git_proto.'://github.com/'.split(arg, ':')[-1]
                if uri !~? '\.git$'
                let uri .= '.git'
                endif
                let name = substitute(split(uri,'\/')[-1], '\.git\s*$','','i')
            elseif arg =~? '^\s*\(git@\|git://\)\S\+'
            \   || arg =~? '\(file\|https\?\)://'
            \   || arg =~? '\.git\s*$'
                let uri = arg
                let name = split( substitute(uri,'/\?\.git\s*$','','i') ,'\/')[-1]
            else
                let name = arg
                let uri  = git_proto.'://github.com/vim-scripts/'.name.'.git'
            endif
            return [uri, name]
        endfunction
    command! TrimSpaces :call TrimSpaces()
        function! TrimSpaces()
            %s/\s\+$//gec
            normal ``
        endfunction
    command! OpenUrl :call OpenUrlUnderCursor()
        function! OpenUrlUnderCursor()
            execute 'normal BvEy'
            let url = matchstr(@0, '[a-z]*:\/\/[^ >,;]*')
            if url != ''
                call system('xdg-open '.url)
            else
                echoerr 'No URL under cursor.'
            endif
        endfunction
    command! Feh :call ViewImage()
        function! ViewImage() abort
            execute 'normal BvEy'
            let path = matchstr(@0, '\v^[ \t]*(\{\{)=\zs[.~/].*\.(jpg|png|gif|bmp)')
            try
                if path != ''
                    let path = &filetype == 'vimwiki' ? g:vimwiki_list[0].path_html . path : path
                    if filereadable(path)
                        silent! execute '!feh '.path.' &' | redraw!
                    else
                        echoerr 'No such image'
                    endif
                else
                    let url = matchstr(@0, '[a-z]*:\/\/[^ >,;]*')
                    if url != ''
                        silent! execute '!feh '.url.' &' | redraw!
                    endif
                endif
            endtry
        endfunction
    command! Scrot :call ScrotImage()
        function! ScrotImage() abort
            let fname = substitute(input('image file name:', 'temp'), ' ', '_', 'g').'.png'
            let fpath = '$HOME/Dropbox/Public/html/assets/image/'.fname
            call system('scrot -s '.fpath)
            call append(line('.'), '{{./assets/image/'.fname.'}}')
            call system('xdg-open '.fpath)
        endfunction
    command! CurSyntax :call GetCurrentSyntax()
        function! GetCurrentSyntax()
            let syname = synIDattr(synID(line('.'), col('.'), 1), 'name')
            execute 'highlight '.syname
        endfunction
    command! Wiki2Org :call Allwiki2Org()
        function! Wiki2Org()
            let b:enter_block = 0
            let b:ordered_index = {}
            let total_line = line("$")
            for lino in range(1, total_line)
                let line_content = getline(lino)
                if line_content =~ '^[\t ]*{{{class=.\w*.'
                    let b:enter_block = 1
                    execute lino.'s/^[\t ]*{{{class=.\(\w*\)./#+begin_src \1'
                elseif line_content =~ '^[\t ]*}}}[\t ]*$'
                    let b:enter_block = 0
                    execute lino.'s/^[\t ]*}}}[\t ]*$/#+end_src'
                elseif !b:enter_block
                    if line_content =~ '^[\t ]*|[-|]\+|[\t ]*$'
                        silent! execute lino.'s/-|-/-+-/g'
                    endif
                    silent! execute lino.'s/\[\[\([^\[\]]*\)\]\]/\="\[\[file:".substitute(submatch(1), " ", "%20", "g").".org\]\[".submatch(1)."\]\]"/g'
                    silent! execute lino.'s/{{\([^{}]*\)}}/\[\[file:\1\]\]/g'
                    silent! execute lino.'s/^[\t ]*{{\$[\t ]*$/\\['
                    silent! execute lino.'s/^[\t ]*}}\$[\t ]*$/\\]'
                    silent! execute lino.'s/^[\t ]*\zs\*/+/g'
                    silent! execute lino.'s/\$\([^`$]*\)\$/\\(\1\\)/g'
                    silent! execute lino.'s/`\([^`]*\)`/\~\1\~/g'
                    silent! execute lino.'s/^[\t ]*\(=\+\)\([^=]*\)=\+/\1\2'
                    if line_content =~ '^[\t ]*=\+'
                        execute lino.'s/=/*/g'
                    endif
                    if line_content =~ '^[\t ]*#\s*'
                        let level = len(matchstr(line_content, '^\s*\ze#'))/&shiftwidth+1
                        call filter(b:ordered_index, 'str2nr(v:key) <= level')
                        let right_index = get(b:ordered_index, level, 0)
                        if !right_index
                            let b:ordered_index[level] = 2
                            let right_index = 1
                        else
                            let b:ordered_index[level] += 1
                        endif
                        execute lino.'s/^[\t ]*\zs#/'.right_index."."
                    elseif line_content =~ '^[\t ]*[*-]'
                        let level = len(matchstr(line_content, '^\s*\ze[*-]'))/&shiftwidth+1
                        if len(b:ordered_index) > 0 && level <= keys(b:ordered_index)[-1]
                            let b:ordered_index = {}
                        endif
                    else
                        let b:ordered_index = {}
                    endif
                endif
            endfor
            %s/[\t ]*$//g
            execute 'w! ~/Dropbox/org/notes/'.substitute(expand("%:t:r"), '\s', '\\ ', 'g').'.org'
            edit!
        endfunction

        function! Allwiki2Org() abort
            for file in systemlist('ls ~/Dropbox/vimwiki/*.wiki')
                let target = substitute(substitute(file, 'wiki$', 'org', ''), 'Dropbox.vimwiki', 'Dropbox/org/notes', '')
                if str2nr(system('date +%s -r ' . shellescape(file))[:-2]) <
                            \ str2nr(system('date +%s -r ' . shellescape(target))[:-2])
                else
                    silent! execute 'e ' . fnameescape(file)
                    call Wiki2Org()
                endif
            endfor
            echom 'finished'
        endfunction
"-----------------------------------------------------------------
" alias
"-----------------------------------------------------------------
    cnoreabbrev <expr> cg
    \ ((getcmdtype() == ':' && getcmdpos() <= 3)? 'cscope find g'    : 'cg')
    cnoreabbrev <expr> cs
    \ ((getcmdtype() == ':' && getcmdpos() <= 3)? 'cscope find s'    : 'cs')
    cnoreabbrev <expr> was
    \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'w\|so %'        : 'was')

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
