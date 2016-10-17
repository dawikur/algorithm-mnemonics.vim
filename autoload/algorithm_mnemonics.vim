if exists("loaded_algorithm_mnemonics_autoload")
  finish
endif
let loaded_algorithm_mnemonics_autoload = 1

function! algorithm_mnemonics#const_return(name)
  if g:algorithm_mnemonics_const_return == "None"
    let l:type = "auto"
  elseif g:algorithm_mnemonics_const_return == "Left"
    let l:type = "const auto"
  elseif g:algorithm_mnemonics_const_return == "Right"
    let l:type = "auto const"
  endif

  return l:type . " " . a:name
endfunction

function! algorithm_mnemonics#equalization(name)
  let l:const_return = algorithm_mnemonics#const_return(a:name)
  return repeat(" ", len(l:const_return))
endfunction
