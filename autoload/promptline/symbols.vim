" The MIT License (MIT)
"
" Copyright (c) 2013-2019 Evgeni Kolev

let s:simple_symbols = {
    \ 'left'                : '',
    \ 'right'               : '',
    \ 'left_alt'            : '|',
    \ 'right_alt'           : '|',
    \ 'dir_sep'             : ' / ',
    \ 'truncation'          : '...',
    \ 'vcs_branch'          : '',
    \ 'battery'             : '',
    \ 'space'               : ' ',',
    \ 'added'               : '*',
    \ 'unmerged'            : 'X',
    \ 'modified'            : '+',
    \ 'clean'               : '.',
    \ 'has_untracked_files' : '…',
    \ 'ahead'               : '>',
    \ 'behind'              : '<',
    }

let s:powerline_symbols = extend(copy(s:simple_symbols), {
    \ 'left'                      : '',
    \ 'right'                     : '',
    \ 'left_alt'                  : '',
    \ 'right_alt'                 : '',
    \ 'dir_sep'                   : '  ',
    \ 'truncation'                : '⋯',
    \ 'vcs_branch'                : ' ',
    \ 'added_symbol'              : '●',
    \ 'unmerged_symbol'           : '✗',
    \ 'modified_symbol'           : '+',
    \ 'clean_symbol'              : '✔',
    \ 'has_untracked_files_symbol': '…',
    \ 'ahead_symbol'              : '↑',
    \ 'behind_symbol'             : '↓',
    }

fun! promptline#symbols#get()
  let use_powerline_symbols = get(g:, 'promptline_powerline_symbols', 1)
  let symbols = use_powerline_symbols ? s:powerline_symbols : s:simple_symbols
  return extend(copy(symbols), get(g:, 'promptline_symbols', {}))
endfun
