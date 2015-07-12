function! s:CustomFuzzySearch(string)
    let pattern = ""
    let ignore_case = g:Cmd2__complete_ignorecase ? '\c' : ''
    let char = matchstr(a:string, ".", byteidx(a:string, 0))
    let pattern = '\V' . ignore_case
    let pattern .= '\<\%(\[agls]\:\)\?'
    let pattern .= '\%(\%(\k\*\[._\-#]\)\?' . char . '\|\k\*\%(' . char . '\&\L\)\)'
    if g:Cmd2__complete_fuzzy
        let result = ''
        let i = 1
        while i < len(a:string)
            let char = matchstr(a:string, ".", byteidx(a:string, i))
            let result .= '\%(' . '\%(\k\*\[._\-#]\)\?' . char . '\|'
            let result .= '\k\*\%(' . char . '\&\L\)' . '\)'
            let i += len(char)
        endwhile
        let pattern .= result
    else
        let pattern .= a:string
    endif
    let pattern .= g:Cmd2__complete_end_pattern
    return pattern
endfunction

function! s:Peekaboo()
    call peekaboo#peek(1, 'ctrl-r',  0)
endfunction

let g:Cmd2_options = {
            \ 'menu_hl' : 'airline_b',
            \ 'menu_selected_hl' : 'airline_a',
            \ 'menu_next' : '⇛',
            \ 'menu_previous' : '⇚',
            \ '_complete_ignorecase': 1,
            \ '_complete_uniq_ignorecase': 0,
            \ '_complete_pattern_func': function('s:CustomFuzzySearch'),
            \ '_complete_start_pattern': '\<\(\[agls]\:\)\?\(\k\*\[_\-#]\)\?',
            \ '_complete_fuzzy': 1,
            \ '_complete_string_pattern': '\v\k(\k|\.)*',
            \ '_complete_loading_text': '...',
            \ }

let g:Cmd2_cmd_mappings = {
            \ 'Peekaboo': {'command': function('s:Peekaboo'), 'type': 'function'},
            \ 'iw': {'command': 'iw', 'type': 'text', 'flags': 'Cpv'},
            \ 'ap': {'command': 'ap', 'type': 'line', 'flags': 'pv'},
            \ '^': {'command': '^', 'type': 'normal!', 'flags': 'r'},
            \ 's': {'command': 's/###/###/g', 'type': 'snippet'},
            \ 'S': {'command': 'Cmd2#functions#CopySearch', 'type': 'function'},
            \ 'b': {'command': 'Cmd2#functions#Back', 'type': 'function', 'flags': 'r'},
            \ 'e': {'command': 'Cmd2#functions#End', 'type': 'function', 'flags': 'r'},
            \ 'CF': {'command': function('Cmd2#ext#complete#Main'), 'type': 'function'},
            \ 'CB': {'command': function('Cmd2#ext#complete#Main'), 'type': 'function'},
            \ 'w': {'command': 'Cmd2#functions#Cword', 'type': 'function', 'flags': 'Cr'},
            \ '\<Plug>Cmd2Tab': {'command': "Cmd2#functions#TabForward", 'type': 'function', 'flags': 'C'},
            \ '\<Plug>Cmd2STab': {'command': "Cmd2#functions#TabBackward", 'type': 'function', 'flags': 'C'},
            \ '\<Tab>': {'command': "\<Plug>Cmd2Tab", 'type': 'remap', 'flags': 'C'},
            \ '\<S-Tab>': {'command': "\<Plug>Cmd2STab", 'type': 'remap', 'flags': 'C'},
            \ }

cmap <C-L> <Plug>Cmd2
cmap <expr> <C-N> Cmd2#ext#complete#InContext() ? "\<Plug>Cmd2CF" : "\<Tab>"
cmap <expr> <C-P> Cmd2#ext#complete#InContext() ? "\<Plug>Cmd2CB" : "\<S-Tab>"
cmap <C-R> <Plug>(Cmd2)Peekaboo

set wildcharm=<Tab>
