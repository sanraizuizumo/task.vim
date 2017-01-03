let &cpo = s:save_cpo
unlet s:save_cpif exists("g:loaded_task")
  finish
endif
let g:loaded_task = 1

let s:save_cpo = &cpo
set cpo&vim

function! task#toggle(line)
  if a:line =~ '^"*\s*\[/\]'
    call setline('.', substitute(a:line, '\[/\]<.*>', '[ ]', ''))
  else
    call setline('.', substitute(a:line, '\[ \]', '[/], ''))
  endif
endfunction

function! task#add(line)
  call setline('.', '[ ]' . a:line)
endfunction

command! -nargs=0 MyTaskToggle call task#toggle(getline("."))
command! -nargs=0 MyTaskAdd call task#add(getline("."))

let &cpo = s:save_cpo
unlet s:save_cpoo
