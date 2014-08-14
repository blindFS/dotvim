" Vim syntax file
" Language: Cilk
" Maintainer: Koen Crolla <cairnarvon@rotahall.org>
" Last Change: 2010-06-19

if exists("b:current_syntax")
    finish
endif

runtime! syntax/c.vim

syn keyword cilkType        cilk
syn keyword cilkStatement   spawn sync inlet abort

hi def link cilkType        Type
hi def link cilkStatement   Statement

let b:current_syntax = "cilk"
