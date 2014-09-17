let g:tagbar_type_vimwiki = {
            \ 'ctagstype' : 'wiki',
            \ 'kinds'     : ['h:headers'],
            \ 'sort'      : 0
            \ }
let g:tagbar_type_markdown = {
            \ 'ctagstype' : 'md',
            \ 'kinds' : ['h:headings'],
            \ 'sort' : 0,
            \ }
let g:tagbar_type_html = {
            \ 'ctagstype' : 'html',
            \ 'kinds'     : ['i:ids', 'c:classes']
            \ }
let g:tagbar_type_css = {
            \ 'ctagstype' : 'css',
            \ 'kinds' : [
            \ 'c:classes',
            \ 'i:ids',
            \ 't:tags',
            \ 'm:media',
            \ 'f:fonts',
            \ 'k:keyframes'
            \ ],
            \ 'sort' : 0,
            \ }
let g:tagbar_type_tex = {
            \ 'ctagstype' : 'latex',
            \ 'kinds' : [
            \ 's:sections',
            \ 'l:labels',
            \ 'd:definitions',
            \ 'e:environments'
            \ ],
            \ 'sort' : 0
            \ }
let g:tagbar_type_javascript = {
            \ 'ctagstype' : 'javascript',
            \ 'kinds' : [
            \ 'o:object',
            \ 'f:function',
            \ 'a:array',
            \ 's:string',
            \ 'b:boolean',
            \ 'n:number',
            \ 'v:variable',
            \ 'm:member'
            \ ]
            \ }
let g:tagbar_type_vhdl = {
            \ 'ctagstype': 'vhdl',
            \ 'kinds' : [
            \ 'd:prototypes',
            \ 'b:package bodies',
            \ 'e:entities',
            \ 'a:architectures',
            \ 't:types',
            \ 'p:processes',
            \ 'f:functions',
            \ 'r:procedures',
            \ 'c:constants',
            \ 'T:subtypes',
            \ 'r:records',
            \ 'C:components',
            \ 'P:packages',
            \ 'l:locals'
            \ ]
            \ }
if executable('hasktags')
    let g:tagbar_type_haskell = {
                \ 'ctagsbin'  : 'hasktags',
                \ 'ctagsargs' : '-x -c -o-',
                \ 'kinds'     : [
                \  'm:modules:0:1',
                \  'd:data: 0:1',
                \  'd_gadt: data gadt:0:1',
                \  't:type names:0:1',
                \  'nt:new types:0:1',
                \  'c:classes:0:1',
                \  'cons:constructors:1:1',
                \  'c_gadt:constructor gadt:1:1',
                \  'c_a:constructor accessors:1:1',
                \  'ft:function types:1:1',
                \  'fi:function implementations:0:1',
                \  'o:others:0:1'
                \ ],
                \ 'sro'        : '.',
                \ 'kind2scope' : {
                \ 'm' : 'module',
                \ 'c' : 'class',
                \ 'd' : 'data',
                \ 't' : 'type'
                \ },
                \ 'scope2kind' : {
                \ 'module' : 'm',
                \ 'class'  : 'c',
                \ 'data'   : 'd',
                \ 'type'   : 't'
                \ }
                \ }
endif
