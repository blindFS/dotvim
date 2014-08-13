let g:context_filetype#filetypes = {
            \ 'markdown': [
            \   {
            \    'start' : '^\s*```\s*\(\h\w*\)',
            \    'end' : '^\s*```$',
            \    'filetype' : '\1',
            \   },
            \   {
            \    'start' : '^\s*{%\s*highlight\s\+\(\h\w*\)\s*%}',
            \    'end' : '^\s*{%\s*endhighlight\s*%}',
            \    'filetype' : '\1',
            \   },
            \ ],
            \ 'vimwiki': [
            \   {
            \    'start' : '^\s*{{{class=.\(\h\w*\)',
            \    'end' : '^\s*}}}',
            \    'filetype' : '\1',
            \   },
            \ ],
            \ 'tex': [
            \  {
            \   'start' : '\\begin{minted}[^{]*{\(\h\w*\)}',
            \   'end' : '\\end{minted}',
            \    'filetype' : '\1',
            \  }
            \ ], }
