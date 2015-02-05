let g:regionsyntax_ft_trans = {
            \ 'ini' : 'dosini',
            \ 'js' : 'javascript',
            \ 'basemake' : 'make',
            \ 'bat' : 'dosbatch'
            \ }
let g:regionsyntax_map = {
            \ 'tex' :
            \   [{
            \       'start' : '\\begin{minted}[^{]*{<syntax>}',
            \       'end' : '\\end{minted}',
            \   }],
            \ 'vim' :
            \   [{
            \       'start' : '^[ \t]*<syntax>\s*<<\s*EO.',
            \       'end' : '^[ \t]*EO.\s*$',
            \   }]
            \ }
