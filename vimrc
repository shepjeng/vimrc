" VimRC used by <shepjeng@gmail.com>

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" Vim scripts repositories
Plugin 'vim-ruby/vim-ruby'

Plugin 'vim-scripts/CRefVim'
Plugin 'vim-scripts/stlrefvim'

Plugin 'tpope/vim-fugitive'
Plugin 'motemen/git-vim'
Plugin 'vim-scripts/vcscommand.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'

Plugin 'vim-scripts/AutoComplPop'
Plugin 'FromtonRouge/OmniCppComplete'
Plugin 'Shougo/neocomplcache.vim'

Plugin 'kana/vim-fakeclip'


" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Backspace and cursor keys wrap to
set whichwrap+=<,>,h,l

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,big5,latin1,gb2312,enc-cn
set termencoding=utf-8
set ambiwidth=double

" Set shell to be bash
set shell=bash

" Sets how many lines of history VIM bar to remember
set history=10

" See partial commands as you type
set showcmd

" Show current mode
set showmode

" Display filename in terminal window
set titlestring=%f\ %h%r%m

" Set list mode
set nolist
set listchars=tab:>-,trail:-,eol:$,nbsp:%,extends:>,precedes:<

" Favorite filetypes
set fileformat=unix
set fileformats=unix,mac,dos

" Set 2 lines to the curors - when moving vertical..
set scrolloff=2

" Such as <TAB> in shell
set wildchar=<TAB>

" Turn on wild menu - enable command-line completion operates
set wildmenu

" have command-line completion <Tab> (for filenames, help topics, option names)
" first list the available options and complete the longest common part, then
" have further <Tab>s cycle through the possibilities:
set wildmode=list:longest,full

" Always show current position
set ruler

" The commandbar is 1 high
set cmdheight=1

" Do not redraw, when running macros.. lazyredraw
set lazyredraw

" Change buffer - without saving
set hidden

" Make searches case-insensitive, unless they contain upper-case letters:
set ignorecase
set smartcase
set incsearch

" Set magic on
set magic

" No sound on errors.
set noerrorbells
set visualbell
set t_vb=

" Show matching bracets
set showmatch

" How many tenths of a second to blink
set matchtime=2

" Highlight search things
set hlsearch

" Always show the statusline
set laststatus=2

" Format the statusline
set statusline=%<%f%m%r%h\ ::%{getcwd()}%=0x%-4B%6.(%c%)%13.(%l/%L%)%5.(%p%%%)

" No viminfo
set viminfo=""

" Turn nobackup, nowritebackup, noswapfile
set nobackup
set nowritebackup
set noswapfile

" Set to auto read when a file is changed from the outside
set autoread

"set linebreak
"set textwidth=80

" Indenting
set autoindent      " Copy indent from current line when starting a new line
set nosmartindent

" Tab
set expandtab
set nosmarttab
set tabstop=8       " real tab characters are 8 spaces wide
set softtabstop=4   " <BS> over an autoindent deletes both spaces
set shiftwidth=4    " an indent level is 4 spaces wide

" Folding
set foldenable
set foldmethod=syntax
set foldlevel=100
"set foldcolumn=2
nnoremap <SPACE> za

" Prefer the new window on the right instead of the left
set splitright

" Some stuff to get the mouse going in term
set mouse=

" Most terminals send modern xterm mouse reporting but this isn't always detected in GNU Screen.
set ttymouse=xterm2

" Only do this part when compiled with support for autocommands.
if has("autocmd")

    " Enable file type detection.
    " Use the default filetype settings, so that mail gets 'tw' set to 72,
    " 'cindent' is on in C files, etc.
    " Also load indent files, to automatically do language-dependent indenting.
    filetype plugin on
    filetype indent on

    " Highlight current line in Insert Mode
    function! s:EnterInsert()
        set cursorline
    endfunction

    function! s:LeaveInsert()
        set nocursorline
    endfunction

    autocmd InsertLeave * call s:LeaveInsert()
    autocmd InsertEnter * call s:EnterInsert()
endif

" Markdown
augroup mkd
    autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:>
augroup END

syntax enable
set t_Co=16
colorscheme shepjeng

" Tab hotkeys
nmap <LEADER>tn :tabnew<CR>
nmap <LEADER>tk :tabclose<CR>
nmap <C-H> :tabprev<CR>
nmap <C-L> :tabnext<CR>

" Nerd Tree
nnoremap <silent> <F3> :NERDTreeToggle<CR>

" ACP && neocomplcache are conflict
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1

" TagBar
nnoremap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autoclose = 1
let g:tagbar_width = 40
let g:tagbar_autofocus = 1
let g:tagbar_expand = 1

" Spell
map <F5> :set spell!<CR><BAR>:echo "Spell check: " . strpart("OffOn", 3 * &spell, 3)<CR>

" List
map <F6> :set list!<CR><BAR>:set list?<CR>

" Expand tab
" map <F7> :set expandtab!<CR><BAR>:set expandtab?<CR>
map <F7> :if &expandtab<BAR>
        \   set noexpandtab<BAR>
        \   set tabstop=4<BAR>
        \   set expandtab?<BAR>
        \ else<BAR>
        \   set expandtab<BAR>
        \   set tabstop=8<BAR>
        \   set expandtab?<BAR>
        \ endif<CR><BAR>

if has("gui_running")
    set t_Co=256
    set guifont=Monaco\ 10
    set columns=120
    set lines=40
    set mouse=a
    colorscheme twilight
endif

if has("gui_macvim")
    set guifont=Menlo:h14
    set transparency=5
endif

set secure

