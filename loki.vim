"Made by LokiChaos

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "loki"

" UI and basic font colors
hi Normal       ctermfg=7
hi LineNr       ctermfg=240     ctermbg=234
hi StatusLine   ctermfg=250     ctermbg=235
hi CursorLine                   ctermbg=235
hi MatchParen   ctermfg=0       ctermbg=10
hi Search       ctermfg=255     ctermbg=9
hi IncSearch    ctermfg=0       ctermbg=208      cterm=none
" Includes $ at eol and ~ on blank lines
hi NonText      ctermfg=93
" Includes tab for listchars
hi SpecialKey   ctermfg=93

" Spelling
hi SpellBad     ctermfg=230     ctermbg=160      cterm=underline
hi SpellCap     ctermfg=235     ctermbg=208
hi SpellRare    ctermfg=235     ctermbg=170
hi SpellLocal   ctermfg=0       ctermbg=27

" Non-syntax Highlights
hi Error        ctermfg=15      ctermbg=9        cterm=reverse
hi Todo         ctermfg=0       ctermbg=11

hi Comment      ctermfg=87
hi link SpecialComment Comment

" Constants and Values
hi Constant     ctermfg=220
hi String       ctermfg=129
hi Character    ctermfg=125
hi Number       ctermfg=118
hi Hex          ctermfg=120
hi Octal        ctermfg=120
hi link Float       Number
hi link Boolean     Number

" Escaped chars
hi Special      ctermfg=226

hi Identifier   ctermfg=165                      cterm=none
hi Statement    ctermfg=14
hi PreProc      ctermfg=196
hi Type         ctermfg=207
hi Function     ctermfg=82
hi Repeat       ctermfg=202
hi Operator     ctermfg=160
hi Ignore       ctermfg=0

" Common groups that link to default highlighting.
hi link Conditional Repeat
hi link Label       Statement
hi link Keyword     Statement
hi link Exception   Statement
hi link Include     PreProc
hi link Define      PreProc
hi link Macro       PreProc
hi link PreCondit   PreProc
hi link StorageClass Type
hi link Structure   Type
hi link Typedef     Type
hi link Tag         Special
hi link SpecialChar Special
hi link Delimiter   Special
hi link Debug       Special
