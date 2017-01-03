if exists("g:loaded_task")
  finish
endif
let g:loaded_task = 1

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=0 MyTaskToggle call task#toggle(getline("."))
command! -nargs=0 MyTaskAdd call task#add(getline("."))

let &cpo = s:save_cpo
unlet s:save_cpo
