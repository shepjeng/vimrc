" vim:expandtab
" Maintainer:   Chung-Chiang Cheng <shepjeng@gmail.com>

hi clear
set background=dark

if exists('syntax_on')
    syntax reset
endif

if $TERM == 'xterm-256color'
    "set termguicolors
else
    set t_Co=16
endif

let g:colors_name = 'cccheng'

" Suggested color names (these are available on most systems):
"   Red         LightRed        DarkRed
"   Green       LightGreen      DarkGreen       SeaGreen
"   Blue        LightBlue       DarkBlue        SlateBlue
"   Cyan        LightCyan       DarkCyan
"   Magenta     LightMagenta    DarkMagenta
"   Yellow      LightYellow     Brown           DarkYellow
"   Gray        LightGray       DarkGray
"   Black       White
"   Orange      Purple          Violet

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Default highlight groups
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"hi Example     cterm=NONE      ctermfg=NONE    ctermbg=NONE            gui=NONE    guifg=NONE          guibg=NONE

" ColorColumn   used for the columns set with 'colorcolumn'

" Conceal       placeholder characters substituted for concealed
"               text (see 'conceallevel')

" Cursor        the character under the cursor

" lCursor       the character under the cursor when |language-mapping|
"               is used (see 'guicursor')

" CursorIM      like Cursor, but used when in IME mode |CursorIM|

" CursorColumn  the screen column that the cursor is in when 'cursorcolumn' is
"               set

" CursorLine    the screen line that the cursor is in when 'cursorline' is
"               set

" Directory     directory names (and other special names in listings)
hi Directory    cterm=NONE      ctermfg=DarkGreen   ctermbg=NONE        gui=NONE    guifg=DarkGreen     guibg=NONE

" DiffAdd       diff mode: Added line |diff.txt|
hi DiffAdd      cterm=NONE      ctermfg=White       ctermbg=NONE        gui=NONE    guifg=White         guibg=NONE

" DiffChange    diff mode: Changed line |diff.txt|
hi DiffChange   cterm=NONE      ctermfg=Gray        ctermbg=NONE        gui=NONE    guifg=Gray          guibg=NONE

" DiffDelete    diff mode: Deleted line |diff.txt|
hi DiffDelete   cterm=NONE      ctermfg=DarkGray    ctermbg=NONE        gui=NONE    guifg=DarkGray      guibg=NONE

" DiffText      diff mode: Changed text within a changed line |diff.txt|
hi DiffText     cterm=NONE      ctermfg=Red         ctermbg=NONE        gui=NONE    guifg=Red           guibg=NONE

" EndOfBuffer   filler lines (~) after the last line in the buffer.
"               By default, this is highlighted like |hl-NonText|.

" ErrorMsg      error messages on the command line

" VertSplit     the column separating vertically split windows
hi VertSplit    cterm=NONE      ctermfg=Blue        ctermbg=NONE        gui=NONE    guifg=Blue          guibg=NONE

" Folded        line used for closed folds
hi Folded       cterm=NONE      ctermfg=Yellow      ctermbg=NONE        gui=NONE    guifg=Yellow        guibg=NONE

" FoldColumn    'foldcolumn'
hi FoldColumn   cterm=NONE      ctermfg=DarkYellow  ctermbg=NONE        gui=NONE    guifg=DarkYellow    guibg=NONE

" SignColumn    column where |signs| are displayed

" IncSearch     'incsearch' highlighting; also used for the text replaced with
                ":s///c"
hi IncSearch    cterm=NONE      ctermfg=NONE        ctermbg=Yellow      gui=NONE    guifg=NONE          guibg=Yellow

" LineNr        Line number for ":number" and ":#" commands, and when 'number'
"               or 'relativenumber' option is set.
hi LineNr       cterm=NONE      ctermfg=Yellow      ctermbg=NONE        gui=NONE    guifg=Yellow        guibg=NONE

" LineNrAbove   Line number for when the 'relativenumber'
"               option is set, above the cursor line.

" LineNrBelow   Line number for when the 'relativenumber'
"               option is set, below the cursor line.

" CursorLineNr  Like LineNr when 'cursorline' is set and 'cursorlineopt' is
"               set to "number" or "both", or 'relativenumber' is set, for
"               the cursor line.

" MatchParen    The character under the cursor or just before it, if it
"               is a paired bracket, and its match. |pi_paren.txt|
hi MatchParen   cterm=NONE      ctermfg=NONE        ctermbg=DarkGreen   gui=NONE    guifg=NONE          guibg=DarkGreen

" ModeMsg       'showmode' message (e.g., "-- INSERT --")
hi ModeMsg      cterm=NONE      ctermfg=Green       ctermbg=NONE        gui=NONE    guifg=Green         guibg=NONE

" MoreMsg       |more-prompt|
hi MoreMsg      cterm=NONE      ctermfg=Yellow      ctermbg=NONE        gui=NONE    guifg=Yellow        guibg=NONE

" NonText       '@' at the end of the window, characters from 'showbreak'
"               and other characters that do not really exist in the text
"               (e.g., ">" displayed when a double-wide character doesn't
"               fit at the end of the line).
hi NonText      cterm=NONE      ctermfg=DarkBlue    ctermbg=NONE        gui=NONE    guifg=DarkBlue      guibg=NONE

" Normal        normal text
hi Normal       cterm=NONE      ctermfg=NONE        ctermbg=NONE        gui=NONE    guifg=NONE          guibg=NONE

" Pmenu         Popup menu: normal item.
hi Pmenu        cterm=NONE      ctermfg=White       ctermbg=DarkGray    gui=NONE    guifg=White         guibg=DarkGray

" PmenuSel      Popup menu: selected item.
hi PmenuSel     cterm=BOLD      ctermfg=DarkYellow  ctermbg=DarkBlue    gui=BOLD    guifg=DarkYellow    guibg=DarkBlue

" PmenuSbar     Popup menu: scrollbar.
hi PmenuSbar    cterm=BOLD      ctermfg=White       ctermbg=Gray        gui=BOLD    guifg=White         guibg=Gray

" PmenuThumb    Popup menu: Thumb of the scrollbar.
hi PmenuThumb   cterm=BOLD      ctermfg=NONE        ctermbg=Blue        gui=BOLD    guifg=NONE          guibg=Blue

" Question      |hit-enter| prompt and yes/no questions
hi Question     cterm=NONE      ctermfg=Yellow      ctermbg=NONE        gui=NONE    guifg=Yellow        guibg=NONE

" QuickFixLine  Current |quickfix| item in the quickfix window.

" Search        Last search pattern highlighting (see 'hlsearch').
"               Also used for similar items that need to stand out.
hi Search       cterm=NONE      ctermfg=DarkRed     ctermbg=Yellow      gui=NONE    guifg=DarkRed       guibg=Yellow

" SpecialKey    Meta and special keys listed with ":map", also for text used
"               to show unprintable characters in the text, 'listchars'.
"               Generally: text that is displayed differently from what it
"               really is.
hi SpecialKey   cterm=NONE      ctermfg=DarkCyan    ctermbg=NONE        gui=NONE    guifg=DarkCyan      guibg=Yellow

" SpellBad      Word that is not recognized by the spellchecker. |spell|
"               This will be combined with the highlighting used otherwise.
hi SpellBad     cterm=NONE      ctermfg=Red         ctermbg=NONE        gui=NONE    guifg=Red           guibg=Yellow

" SpellCap      Word that should start with a capital. |spell|
"               This will be combined with the highlighting used otherwise.

" SpellLocal    Word that is recognized by the spellchecker as one that is
"               used in another region. |spell|
"               This will be combined with the highlighting used otherwise.

" SpellRare     Word that is recognized by the spellchecker as one that is
"               hardly ever used. |spell|
"               This will be combined with the highlighting used otherwise.

" StatusLine    status line of current window
hi StatusLine   cterm=NONE      ctermfg=White       ctermbg=DarkBlue    gui=NONE    guifg=White         guibg=DarkBlue

" StatusLineNC  status lines of not-current windows
"               Note: if this is equal to "StatusLine" Vim will use "^^^" in
"               the status line of the current window.
hi StatusLineNC cterm=NONE      ctermfg=Gray        ctermbg=Blue        gui=NONE    guifg=Gray          guibg=Blue

" StatusLineTerm status line of current window, if it is a |terminal| window.

" StatusLineTermNC status lines of not-current windows that is a |terminal|
"               window.

" TabLine       tab pages line, not active tab page label
hi TabLine      cterm=NONE      ctermfg=DarkGray    ctermbg=NONE        gui=NONE    guifg=DarkGray      guibg=NONE

" TabLineFill   tab pages line, where there are no labels
hi TabFill      cterm=NONE      ctermfg=NONE        ctermbg=NONE        gui=NONE    guifg=NONE          guibg=NONE

" TabLineSel    tab pages line, active tab page label
hi TabLineSel   cterm=NONE      ctermfg=White       ctermbg=DarkBlue    gui=NONE    guifg=White         guibg=DarkBlue

" Terminal      |terminal| window (see |terminal-size-color|)

" Title         titles for output from ":set all", ":autocmd" etc.
hi Title        cterm=NONE      ctermfg=DarkGreen   ctermbg=NONE        gui=NONE    guifg=DarkGreen     guibg=NONE

" Visual        Visual mode selection
hi Visual       cterm=NONE      ctermfg=Black       ctermbg=DarkYellow  gui=NONE    guifg=Black         guibg=DarkYellow

" VisualNOS     Visual mode selection when vim is "Not Owning the Selection".
"               Only X11 Gui's |gui-x11| and |xterm-clipboard| supports this.

" WarningMsg    warning messages

" WildMenu      current match in 'wildmenu' completion

" Menu          Current font, background and foreground colors of the menus.
"               Also used for the toolbar.
"               Applicable highlight arguments: font, guibg, guifg.

" Scrollbar     Current background and foreground of the main window's
"               scrollbars.
"               Applicable highlight arguments: guibg, guifg.

" Tooltip       Current font, background and foreground of the tooltips.
"               Applicable highlight arguments: font, guibg, guifg.


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Source code hightlight groups
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"*Comment       any comment
hi Comment      cterm=NONE      ctermfg=DarkGray    ctermbg=NONE        gui=NONE    guifg=DarkGray      guibg=NONE

"*Constant      any constant
hi Constant     cterm=NONE      ctermfg=Green       ctermbg=NONE        gui=NONE    guifg=Green         guibg=NONE
" String        a string constant: "this is a string"
hi String       cterm=NONE      ctermfg=Green       ctermbg=NONE        gui=NONE    guifg=Green         guibg=NONE
" Character     a character constant: 'c', '\n'
hi Character    cterm=NONE      ctermfg=LightGreen  ctermbg=NONE        gui=NONE    guifg=LightGreen    guibg=NONE
" Number        a number constant: 234, 0xff
hi Number       cterm=NONE      ctermfg=Cyan        ctermbg=NONE        gui=NONE    guifg=Cyan          guibg=NONE
" Boolean       a boolean constant: TRUE, false
hi Boolean      cterm=NONE      ctermfg=Green       ctermbg=NONE        gui=NONE    guifg=Green         guibg=NONE
" Float         a floating point constant: 2.3e10
hi Float        cterm=NONE      ctermfg=Cyan        ctermbg=NONE        gui=NONE    guifg=Cyan          guibg=NONE

"*Identifier    any variable name
hi Identifier   cterm=NONE      ctermfg=Green       ctermbg=NONE        gui=NONE    guifg=Green         guibg=NONE
" Function      function name (also: methods for classes)

"*Statement     any statement
hi Statement    cterm=NONE      ctermfg=DarkGreen   ctermbg=NONE        gui=NONE    guifg=DarkGreen     guibg=NONE
" Conditional   if, then, else, endif, switch, etc.
" Repeat        for, do, while, etc.
" Label         case, default, etc.
" Operator      "sizeof", "+", "*", etc.
hi Operator     cterm=NONE      ctermfg=Yellow      ctermbg=NONE        gui=NONE    guifg=Yellow        guibg=NONE
" Keyword       any other keyword
" Exception     try, catch, throw

"*PreProc       generic Preprocessor
hi PreProc      cterm=NONE      ctermfg=DarkGreen   ctermbg=NONE        gui=NONE    guifg=DarkGreen     guibg=NONE
" Include       preprocessor #include
" Define        preprocessor #define
" Macro         same as Define
" PreCondit     preprocessor #if, #else, #endif, etc.
hi PreCondit    cterm=Bold      ctermfg=DarkGreen   ctermbg=NONE        gui=Bold    guifg=DarkGreen     guibg=NONE

"*Type          int, long, char, etc.
hi Type         cterm=NONE      ctermfg=DarkGreen   ctermbg=NONE        gui=NONE    guifg=DarkGreen     guibg=NONE
" StorageClass  static, register, volatile, etc.
" Structure     struct, union, enum, etc.
" Typedef       A typedef

"*Special       any special symbol
hi Special      cterm=NONE      ctermfg=Yellow      ctermbg=NONE        gui=NONE    guifg=Yellow        guibg=NONE
" SpecialChar   special character in a constant
" Tag           you can use CTRL-] on this
" Delimiter     character that needs attention
" SpecialComment special things inside a comment
" Debug         debugging statements

"*Underlined    text that stands out, HTML links

"*Ignore        left blank, hidden  |hl-Ignore|

"*Error         any erroneous construct
hi Error        cterm=NONE      ctermfg=Red         ctermbg=NONE        gui=NONE    guifg=Red           guibg=NONE

"*Todo          anything that needs extra attention; mostly the
"               keywords TODO FIXME and XXX
hi Todo         cterm=NONE      ctermfg=Yellow      ctermbg=Red         gui=NONE    guifg=Yellow        guibg=Red


hi ColorColumn  cterm=NONE      ctermfg=DarkRed     ctermbg=Black       gui=NONE    guifg=DarkRed       guibg=Black
hi ExtraWhitespace cterm=NONE   ctermfg=NONE        ctermbg=Red         gui=NONE    guifg=NONE          guibg=Red

