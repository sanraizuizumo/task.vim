let s:save_cpo = &cpo
set cpo&vim

function! task#toggle(line)
  if a:line =~ '^"*\s*\[/\]'
    call setline('.', substitute(a:line, '\[/\]', '[ ]', ''))
  else
    call setline('.', substitute(a:line, '\[ \]', '[/], ''))
  endif
endfunction

function! task#add(line)
  call setline('.', '[ ]' . a:line)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpoo
