# nvim-colourizer
A syntactic sugar highlighting function. Originally shamelessly ripped from Steve Losh's badwolf vim colourscheme -- it's awesome, so check it out: https://github.com/sjl/badwolf

I made the function and palette global and made them a stand-alone plugin since I needed to use them for both my colorscheme and my custom statusline.

## Note!
In order to use this in a colorscheme, you might have to load the scheme with:
```au! VimStart * :colorscheme [name_goes_here]```
in order to ensure that the plugin loads before the colorscheme.
