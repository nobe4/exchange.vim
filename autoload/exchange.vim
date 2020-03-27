" Use the marks A,B,C and D to do the subsitution.
" Will exchange `A -> `B with `C -> `D

function! exchange#Start()
	" First selection
	execute 'vnoremap '. g:exchange_key_one .' :call exchange#step1()<CR>'
endfunction

function! exchange#step1()
	" Save the first marks
	normal! `<mA`>mB

	" Unmap first key
	execute 'silent! vunmap ' . g:exchange_key_one

	" Second selection
	execute 'vnoremap '. g:exchange_key_two .' :call exchange#step2()<CR>'
endfunction

function! exchange#step2()
	" Save the second marks
	normal! `<mC`>mD

	" Switch (and stay at the last place)
	normal! `Av`By`Cv`Dp`Av`Bp`C

	" Unmap second key
	execute 'silent! vunmap ' . g:exchange_key_two

	" Remap the first key
	call exchange#Start()
endfunction
