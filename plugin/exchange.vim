" load plugin only once && verify if vim is nocompatible
if exists("g:exchange_version") || &cp
  finish
endif

" Plugin version
let g:exchange_version = 0.2

" Set default for variables
let g:exchange_key_one = get(g:, 'exchange_key_one', '<CR>')
let g:exchange_key_two = get(g:, 'exchange_key_two', '<CR>')

" Call Starts who does the first step mapping
call exchange#Start()
