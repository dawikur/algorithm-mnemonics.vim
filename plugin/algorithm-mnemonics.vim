if exists("loaded_algorithm_mnemonics")
  finish
endif
let loaded_algorithm_mnemonics = 1

function s:init(name, value)
  if !exists(name)
    execute 'let ' . name . ' = ' . value
  endif
endfunction

call s:init("
