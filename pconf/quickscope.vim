let g:qs_highlight_on_keys = ['f', 'F']
augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guibg='#000000' gui=italic ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guibg='#AA0000' gui=italic ctermfg=81 cterm=underline
augroup END
