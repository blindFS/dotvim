let g:vimwiki_CJK_length      = 1
let g:calendar_diary          = $HOME.'/Dropbox/vimwiki/diary'
let g:vimwiki_list            = [{'path': $HOME.'/Dropbox/vimwiki/',
            \ 'path_html': $HOME.'/Dropbox/vimwiki/html/',
            \ 'css_name': 'assets/css/style.css',
            \ 'template_path': $HOME.'/Dropbox/vimwiki/templates',
            \ 'template_default': 'def_template',
            \ 'template_ext': '.html'}]
let g:vimwiki_valid_html_tags = 'b,i,s,u,sub,sup,kbd,br,hr,table,tr,th,td,p,span'
let g:vimwiki_code_syntax_map = {
            \ 'lisp' : 'cl',
            \ 'charmpp' : 'c'}
