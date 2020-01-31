" Color palette initialization and "none" colour {{{
let g:FalkColourPalette = {}
let g:FalkColourPalette.none = ['0', 0]
" Color palette initialization and "none" colour }}}
" Highlighting Function {{{
function! g:HL(group, fg, ...)
    " Arguments: group, guifg, guibg, gui, guisp
    let histring = 'hi ' . a:group . ' '
    if strlen(a:fg)
        if a:fg == 'fg'
            let histring .= 'guifg=fg ctermfg=fg '
        else
            let c = get(g:FalkColourPalette, a:fg)
            let histring .= 'guifg=' . c[0] . ' ctermfg=' . c[1] . ' '
        endif
    endif
    if a:0 >= 1 && strlen(a:1)
        if a:1 == 'bg'
            let histring .= 'guibg=bg ctermbg=bg '
        else
            let c = get(g:FalkColourPalette, a:1)
            let histring .= 'guibg=' . c[0] . ' ctermbg=' . c[1] . ' '
        endif
    endif
    if a:0 >= 2 && strlen(a:2)
        let histring .= 'gui=' . a:2 . ' cterm=' . a:2 . ' '
    endif
    if a:0 >= 3 && strlen(a:3)
        let c = get(g:FalkColourPalette, a:3)
        let histring .= 'guisp=#' . c[0] . ' '
    endif
    execute histring
endfunction
" Hilighting Function }}}
" EOF
