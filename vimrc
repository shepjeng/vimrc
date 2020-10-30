" VimRC used by <shepjeng@gmail.com>

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'preservim/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular.git'
Plugin 'shougo/neocomplete.vim'

call vundle#end()            " required
filetype plugin indent on    " required


" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Backspace and cursor keys wrap to
set whichwrap+=<,>,h,l

" Encoding
set encoding=utf-8
set fileencoding=utf-8
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


" Highlight current line in Insert Mode
function! s:EnterInsert()
    set cursorline
endfunction

function! s:LeaveInsert()
    set nocursorline
endfunction

autocmd InsertLeave * call s:LeaveInsert()
autocmd InsertEnter * call s:EnterInsert()


" Tab settings/hotkeys
set tabpagemax=50
nnoremap <LEADER>tn :tabnew<CR>
nnoremap <LEADER>tc :tabclose<CR>
nnoremap <C-H> :tabprev<CR>
nnoremap <C-L> :tabnext<CR>

" Nerd Tree
nnoremap <silent> <F3> :NERDTreeToggle<CR>

" TagBar
nnoremap <silent> <F4> :TagbarToggle<CR>

" Spell
nnoremap <F5> :set spell!<CR><BAR>:echo "Spell check: " . strpart("OffOn", 3 * &spell, 3)<CR>

" List
nnoremap <F6> :set list!<CR><BAR>:set list?<CR>

" Expand tab
function! ExpandTabToggle()
    if &expandtab
        set noexpandtab
        set tabstop=4
    else
        set expandtab
        set tabstop=8
    endif
	set expandtab?
endfunction

nnoremap <F7> :call ExpandTabToggle()<CR>

" NeoComplete
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'


syntax enable
set t_Co=16
" 80 characters line
set colorcolumn=81
"execute "set colorcolumn=" . join(range(81,335), ',')
colorscheme shepjeng


" Highlight trailing spaces
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()


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

