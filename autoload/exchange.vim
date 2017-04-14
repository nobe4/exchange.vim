" Use the marks A,B,C and D to do the subsitution.
" Will exchange `A -> `B with `C -> `D

function! exchange#Start()
  " First selection
  vnoremap <CR> :call exchange#step1()<CR>
endfunction

function! exchange#step1()
  " Save the first marks
  normal! `<mA`>mB

  " Second selection
  vnoremap <CR> :call exchange#step2()<CR>
endfunction

function! exchange#step2()
  " Save the second marks
  normal! `<mC`>mD

  " Switch (and stay at the last place)
  normal! `Av`By`Cv`Dp`Av`Bp`C

  " Remove the CR mapping
  vunmap <CR>
endfunction
