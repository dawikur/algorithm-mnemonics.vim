if exists("loaded_algorithm_mnemonics")
  finish
endif
let loaded_algorithm_mnemonics = 1

function! s:init(name, value)
  if !exists(a:name)
    execute 'let ' . a:name . ' = "' . a:value . '"'
  endif
endfunction

call s:init("g:algorithm_mnemonics_const_return", "Right")
call s:init("g:algorithm_mnemonics_lambda_parameter", "auto const value")
