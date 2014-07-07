" Vim color file
" Maintainer:	Prachya Boonkwan <kaamanita@hotmail.com>
" Last Change:	April 29, 2003
" Licence:	    Public Domain

" This package offers a eye-catching color scheme that resembles the
" default color scheme of Putty telnet terminal.

" First remove all existing highlighting.
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "putty"

hi Normal guifg=White guibg=Black

hi ErrorMsg guibg=Red guifg=White
hi IncSearch gui=reverse
hi ModeMsg gui=bold
hi StatusLine gui=reverse,bold
hi StatusLineNC gui=reverse
hi VertSplit gui=reverse
hi Visual gui=reverse guifg=Grey guibg=fg
hi VisualNOS gui=underline,bold
hi DiffText gui=bold guibg=Red
hi Cursor guibg=Grey guifg=NONE
hi lCursor guibg=Cyan guifg=NONE
hi Directory guifg=Blue
hi LineNr guifg=#AAAA00
hi MoreMsg gui=bold guifg=SeaGreen
hi NonText gui=bold guifg=Blue guibg=Black
hi Question gui=bold guifg=SeaGreen
hi Search guibg=#AAAA00 guifg=NONE
hi SpecialKey guifg=Blue
hi Title gui=bold guifg=Magenta
hi WarningMsg guifg=Red
hi WildMenu guibg=Cyan guifg=Black
hi Folded guibg=White guifg=DarkBlue
hi FoldColumn guibg=Grey guifg=DarkBlue
hi DiffAdd guibg=LightBlue
hi DiffChange guibg=LightMagenta
hi DiffDelete gui=bold guifg=Blue guibg=LightCyan

hi Comment gui=NONE guifg=Blue guibg=Black
hi Constant gui=NONE guifg=#AA0000 guibg=Black
hi PreProc gui=NONE guifg=#AA00AA guibg=Black
hi Statement gui=NONE guifg=#AAAA00 guibg=Black
hi Special gui=NONE guifg=#BB00BB guibg=Black
hi Ignore gui=NONE guifg=Grey
hi Identifier gui=NONE guifg=#00AAAA guibg=Black
hi Type gui=NONE guifg=#00AA00 guibg=Black

hi link IncSearch		Visual
hi link String			Constant
hi link Character		Constant
hi link Number			Constant
hi link Boolean			Constant
hi link Float			Number
hi link Function		Identifier
hi link Conditional		Statement
hi link Repeat			Statement
hi link Label			Statement
hi link Operator		Statement
hi link Keyword			Statement
hi link Exception		Statement
hi link Include			PreProc
hi link Define			PreProc
hi link Macro			PreProc
hi link PreCondit		PreProc
hi link StorageClass	Type
hi link Structure		Type
hi link Typedef			Type
hi link Tag				Special
hi link SpecialChar		Special
hi link Delimiter		Special
hi link SpecialComment	Special
hi link Debug			Special

" vim: sw=2
