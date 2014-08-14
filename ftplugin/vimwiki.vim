function! vimwiki#OmniComplete(findstart, base)
    if a:findstart
        let line = getline('.')
        if line =~ '{{local:.*'
            return searchpos('local:', 'bn', line('.'))[1] + 5
        endif
        return -3
    else
        let prefix = matchstr(a:base, '.*\/')
        let suffix = a:base[len(prefix):]
        let path = g:vimwiki_list[0].path . prefix
        let output = system('ls ' . path)
        if output =~ 'No such file or directory'
            return []
        endif
        let list = filter(split(output, '\n'), 'v:val =~ suffix')
        let list = map(list, 'prefix . v:val')
        return list
    endif
endfunction

setlocal omnifunc=vimwiki#OmniComplete
if exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns.vimwiki = '{{local:.*\/'
endif
