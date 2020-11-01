" vim:expandtab
" Maintainer:   Chung-Chiang Cheng <shepjeng@gmail.com>
"
" Useful information
" :he group-name
" 0: Black           8: DarkGray
" 1: DrakRed         9: Red
" 2: DrakGreen      10: Green
" 3: DarkYellow     11: Yellow
" 4: DakBlue        12: Blue
" 5: DarkMagenta    13: Magenta
" 6: DakCyan        14: Cyan
" 7: Gray           15: White

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "shepjeng"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Default highlight groups
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Cursor             the character under the cursor

"CursorIM           like Cursor, but used when in IME mode

"CursorColumn       the screen column that the cursor is in when 'cursorcolumn' is set

"CursorLine         the screen line that the cursor is in when 'cursorline' is set

"Directory          directory names (and other special names in listings)
hi Directory        cterm=none  ctermfg=2       ctermbg=none

"DiffAdd            diff mode: Added line
hi DiffAdd          cterm=none  ctermfg=15      ctermbg=12

"DiffChange         diff mode: Changed line
hi DiffChange       cterm=none  ctermfg=7       ctermbg=8

"DiffDelete         diff mode: Deleted line
hi DiffDelete       cterm=none  ctermfg=8       ctermbg=8

"DiffText           diff mode: Changed text within a changed line
hi DiffText         cterm=none  ctermfg=9       ctermbg=8

"ErrorMsg           error messages on the command line

"VertSplit          the column separating vertically split windows
hi VertSplit        cterm=none  ctermfg=12      ctermbg=12

"Folded             line used for closed folds
hi Folded           cterm=none  ctermfg=11      ctermbg=8

"FoldColumn         'foldcolumn'
hi FoldColumn       cterm=none  ctermfg=3       ctermbg=none

"SignColumn         column where |signs| are displayed

"IncSearch          'incsearch' highlighting; also used for the text replaced with ":s///c"
hi IncSearch        cterm=none  ctermfg=none    ctermbg=11

"LineNr             Line number for ":number" and ":#" commands, and when 'number' option is set.
hi LineNr           cterm=none  ctermfg=11      ctermbg=none

"MatchParen         The character under the cursor or just before it, if it is a paired bracket, and its match.
hi MatchParen       cterm=none  ctermfg=none    ctermbg=2

"ModeMsg            'showmode' message (e.g., "-- INSERT --")
hi ModeMsg          cterm=none  ctermfg=10      ctermbg=none

"MoreMsg            |more-prompt|
hi MoreMsg          cterm=none  ctermfg=11      ctermbg=none

"NonText            '~' and '@' at the end of the window, characters from
"                   'showbreak' and other characters that do not really exist in
"                   the text (e.g., ">" displayed when a double-wide character
"                   doesn't fit at the end of the line).
hi NonText          cterm=none  ctermfg=4       ctermbg=none

"Normal             normal text
hi Normal           cterm=none  ctermfg=none    ctermbg=none

"Pmenu              Popup menu: normal item.
hi Pmenu            cterm=none  ctermfg=15      ctermbg=8

"PmenuSel           Popup menu: selected item.
hi PmenuSel         cterm=bold  ctermfg=3       ctermbg=4

"PmenuSbar          Popup menu: scrollbar.
hi PmenuSbar        cterm=bold  ctermfg=15      ctermbg=7

"PmenuThumb         Popup menu: Thumb of the scrollbar.
hi PmenuThumb       cterm=bold  ctermfg=none    ctermbg=12

"Question           Prompt and yes/no questions
hi Question         cterm=none  ctermfg=11      ctermbg=0

"Search             Last search pattern highlighting (see 'hlsearch').
"                   Also used for highlighting the current line in the quickfix
"                   window and similar items that need to stand out.
hi Search           cterm=none  ctermfg=1       ctermbg=11

"SpecialKey         Meta and special keys listed with ":map", also for text used
"                   to show unprintable characters in the text, 'listchars'.
"                   Generally: text that is displayed differently from what it really is.
hi SpecialKey       cterm=none  ctermfg=6       ctermbg=none

"SpellBad           Word that is not recognized by the spellchecker.
"                   This will be combined with the highlighting used otherwise.
hi SpellBad         cterm=none  ctermfg=9       ctermbg=none

"SpellCap           Word that should start with a capital.
"                   This will be combined with the highlighting used otherwise.
hi SpellRare        cterm=none  ctermfg=none    ctermbg=53

"SpellLocal         Word that is recognized by the spellchecker as one that is used in another region.
"                   This will be combined with the highlighting used otherwise.
hi SpellLocal       cterm=none  ctermfg=none    ctermbg=58

"SpellRare          Word that is recognized by the spellchecker as one that is hardly ever used.
"                   This will be combined with the highlighting used otherwise.
hi SpellCap         cterm=none  ctermfg=none    ctermbg=23

"StatusLine         status line of current window
hi StatusLine       cterm=none  ctermfg=15      ctermbg=4

"StatusLineNC       status lines of not-current windows Note: if this is equal 
"                   to "StatusLine" Vim will use "^^^" in the status line of the current window.
hi StatusLineNC     cterm=none  ctermfg=7       ctermbg=12

"TabLine            tab pages line, not active tab page label
hi TabLine          cterm=none  ctermfg=8       ctermbg=none

"TabLineFill        tab pages line, where there are no labels
hi TabLineFill      cterm=none  ctermfg=none    ctermbg=none

"TabLineSel         tab pages line, active tab page label
hi TabLineSel       cterm=none  ctermfg=15      ctermbg=4

"Title              titles for output from ":set all", ":autocmd" etc.
hi Title            cterm=none  ctermfg=2       ctermbg=none

"Visual             Visual mode selection
hi Visual           cterm=none  ctermfg=0       ctermbg=3

"VisualNOS          Visual mode selection when vim is "Not Owning the Selection".
"                   Only X11 Gui's |gui-x11| and |xterm-clipboard| supports this.

"WarningMsg         warning messages

"WildMenu           current match in 'wildmenu' completion


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Source code hightlight groups
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"*Comment           any comment
hi Comment          cterm=none  ctermfg=8       ctermbg=none

"*Constant          any constant
" String            a string constant: "this is a string"
" Character         a character constant: 'c', '\n'
" Number            a number constant: 234, 0xff
" Boolean           a boolean constant: TRUE, false
" Float             a floating point constant: 2.3e10
hi Constant         cterm=none  ctermfg=10      ctermbg=none
hi String           cterm=none  ctermfg=10      ctermbg=none
hi Character        cterm=none  ctermfg=10      ctermbg=none
hi Number           cterm=none  ctermfg=14      ctermbg=none
hi Float            cterm=none  ctermfg=14      ctermbg=none

"*Identifier        any variable name
" Function          function name (also: methods for classes)
hi Identifier       cterm=none  ctermfg=10      ctermbg=none

"*Statement         any statement
" Conditional       if, then, else, endif, switch, etc.
" Repeat            for, do, while, etc.
" Label             case, default, etc.
" Operator          "sizeof", "+", "*", etc.
" Keyword           any other keyword
" Exception         try, catch, throw
hi Statement        cterm=none  ctermfg=2       ctermbg=none
hi Operator         cterm=none  ctermfg=11      ctermbg=none

"*PreProc           generic Preprocessor
" Include           preprocessor #include
" Define            preprocessor #define
" Macro             same as Define
" PreCondit         preprocessor #if, #else, #endif, etc.
hi PreProc          cterm=none  ctermfg=2       ctermbg=none

"*Type              int, long, char, etc.
" StorageClass      static, register, volatile, etc.
" Structure         struct, union, enum, etc.
" Typedef           A typedef
hi Type             cterm=none  ctermfg=2       ctermbg=none

"*Special           any special symbol
" SpecialChar       special character in a constant
" Tag               you can use CTRL-] on this
" Delimiter         character that needs attention
" SpecialComment    special things inside a comment
" Debug             debugging statements
hi Special          cterm=none  ctermfg=11      ctermbg=none

"*Underlined        text that stands out, HTML links

"*Ignore            left blank, hidden

"*Error             any erroneous construct
hi Error            cterm=none  ctermfg=9       ctermbg=none

"*Todo              anything that needs extra attention; mostly the "keywords TODO FIXME and XXX
hi Todo             cterm=none  ctermfg=11      ctermbg=1

hi ColorColumn      cterm=none  ctermfg=DarkRed ctermbg=Black
hi ExtraWhitespace  cterm=none  ctermfg=none    ctermbg=Red
