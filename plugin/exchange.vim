" load plugin only once && verify if vim is nocompatible
if exists("g:exchange_version") || &cp
  finish
endif

" plugin version
let g:exchange_version = 0.1

" Simple command definition
command! XC call exchange#Start()

" Mapping to jump to the step1 quickly.
" This is the same as v_D and X sounds nice for eXchange
vnoremap X :call exchange#step1()<CR>

" That's all folks, all the magic is in the autoload folder.
