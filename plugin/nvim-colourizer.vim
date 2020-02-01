" Color palette initialization {{{
let g:Palette = {}
let g:Palette.none = ['0', 0]
" Colors {{{
let g:Palette.black               = ['#000000', 232]
let g:Palette.white               = ['#FFFFFF', 231]
let g:Palette.folder_fg           = ['#FFD787',  11]
let g:Palette.mid_dark            = ['#333333', 237]
let g:Palette.soft_dark           = ['#3D3D3D', 238]
let g:Palette.vsplit_fg           = ['#333333', 237] " separator 
let g:Palette.select_bg           = ['#333333', 237] 
let g:Palette.search_fg           = ['#FFFF5F', 227] 
let g:Palette.search_bg           = ['#222222', 235] 
let g:Palette.end_of_buffer_fg    = ['#333333', 237] " tildes 
let g:Palette.line_nr_fg          = ['#555555', 239]
let g:Palette.line_nr_hilight     = ['#FBDF7E', 239] " TODO
let g:Palette.test_fg             = ['#00FFFF', 171] " TODO
let g:Palette.test_bg             = ['#FFFF00',  21] " TODO
let g:Palette.test_xg             = ['#F000FF',  21] " TODO
let g:Palette.cursor_bg           = ['#FFFF00', 222] " TODO
let g:Palette.cursor_fg           = ['#00FFFF', 196] " TODO
let g:Palette.todo_fg             = ['#FFFFFF', 121] " TODO
let g:Palette.todo_bg             = ['#222222', 196] " TODO
let g:Palette.scope_match         = ['#FFDD66', 214] " TODO
let g:Palette.comment_discreet    = ['#555555', 214] " TODO
let g:Palette.comment_highlight   = ['#FFD75F', 221]
let g:Palette.prio_comment_fg     = ['#FFFFFF', 154] " TODO
let g:Palette.prio_comment_bg     = ['#FF0000', 196] " TODO
let g:Palette.bright_fg           = ['#FFFFFF', 255] " TODO
let g:Palette.plain_fg            = ['#CCCCCC', 211] " TODO
let g:Palette.plain_bg            = ['#323232', 235] " TODO
let g:Palette.dim_fg              = ['#777777', 239] " TODO
let g:Palette.dark_fg             = ['#555555', 239] " TODO
let g:Palette.tab_markers         = ['#333333', 239] " TODO

let g:Palette.exception           = ['#AF0000', 124]
let g:Palette.error               = ['#FF0000', 196]
let g:Palette.warning_hi          = ['#FFAF00', 214]
let g:Palette.warning_lo          = ['#FFD75F', 221]

let g:Palette.replace             = ['#FF5F5F', 203]
let g:Palette.insert              = ['#87FF87', 120]

let g:Palette.mode_normal_light   = ['#94BFF3',  12]
let g:Palette.mode_normal_dark    = ['#005FAF',  24]
let g:Palette.mode_insert_light   = ['#72D5A3',  10]
let g:Palette.mode_insert_dark    = ['#303030',  22]
let g:Palette.mode_replace_light  = ['#FF5F5F', 203]
let g:Palette.mode_replace_dark   = ['#380008',  52]
let g:Palette.mode_terminal_light = ['#DDDDDD', 150]
let g:Palette.mode_terminal_dark  = ['#111111', 235]
let g:Palette.mode_visual_light   = ['#FFFF87',  20]
let g:Palette.mode_visual_dark    = ['#AF8700', 136]
let g:Palette.mode_command_light  = ['#AF87FF', 141]
let g:Palette.mode_command_dark   = ['#5F0087',  54]

let g:Palette.hyperlink           = ['#9933FF',  63] " TODO

let g:Palette.dark_green          = ['#005F00',  22]
let g:Palette.dark_red            = ['#5F0000',  52]
let g:Palette.green               = ['#72D5AE',  20]
let g:Palette.yellow              = ['#FFFF87', 228]
let g:Palette.yellow_light        = ['#FFD7AF', 223]
let g:Palette.red                 = ['#FF5F5F', 203]

let g:Palette.format_fg           = ['#CAA4E8',   0] " TODO
let g:Palette.keyword_fg          = ['#FF5959',   0] " TODO
let g:Palette.type_fg             = ['#FFA9A9',   0] " TODO
let g:Palette.special_fg          = ['#FFFFFF', 174] " TODO
let g:Palette.function_fg         = ['#FF8787', 174] " TODO
let g:Palette.constant_fg         = ['#CCFFCC', 255] " TODO
let g:Palette.string_fg           = ['#FFBC82', 216] " TODO
let g:Palette.controlflow_fg      = ['#FF6F89',  83] " TODO
let g:Palette.preprocessor_fg     = ['#AFFF00',  83] " TODO
let g:Palette.pmenu_bg            = ['#555555',  83] " TODO
let g:Palette.pmenu_on_fg         = ['#FFFFFF',  83] " TODO
let g:Palette.pmenu_off_fg        = ['#222222',  83] " TODO
" Colors }}}

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
