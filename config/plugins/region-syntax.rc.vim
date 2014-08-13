let g:regionsyntax_ft_trans = {
            \ 'ini' : 'dosini',
            \ 'js' : 'javascript',
            \ 'basemake' : 'make'}
let g:regionsyntax_map = {
            \ "tex" :
            \ [{
            \   'start' : '\\begin{minted}[^{]*{<syntax>}',
            \   'end' : '\\end{minted}',
            \ }]}
