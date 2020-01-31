" Color palette initialization and "none" colour {{{
let g:Palette = {}
let g:Palette.none = ['0', 0]
" Color palette initialization and "none" colour }}}
" Highlighting Function {{{
" Arguments: group, guifg, guibg, gui, guisp
function! g:HL(group, fg, ...)
   let highlight_command = 'hi ' . a:group . ' '
   if strlen(a:fg)
      if a:fg == 'fg'
         let highlight_command .= 'guifg=fg ctermfg=fg '
      else
         let colour = get(g:Palette, a:fg)
         let highlight_command .= 'guifg=' . colour[0] . ' ctermfg=' . colour[1] . ' '
      endif
   endif
   if a:0 >= 1 && strlen(a:1)
      if a:1 == 'bg'
         let highlight_command .= 'guibg=bg ctermbg=bg '
      else
         let colour = get(g:Palette, a:1)
         let highlight_command .= 'guibg=' . colour[0] . ' ctermbg=' . colour[1] . ' '
      endif
   endif
   if a:0 >= 2 && strlen(a:2)
      let highlight_command .= 'gui=' . a:2 . ' cterm=' . a:2 . ' '
   endif
   if a:0 >= 3 && strlen(a:3)
      let colour = get(g:Palette, a:3)
      let highlight_command .= 'guisp=#' . colour[0] . ' '
   endif
   execute highlight_command
endfunction
" Highlighting Function }}}
" EOF
