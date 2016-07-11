" write oldopenvimfile~
set nowritebackup
set nobackup

" open each buffer in tab > don't run
:tab all

" pathogen autoload
execute pathogen#infect()
syntax on
filetype plugin indent on

" autocomplete
ino " ""<left>
ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>
ino {<CR> {<CR>}<ESC>O

" colorscheme desert
colorscheme desert

set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set expandtab       " tabs are spaces
filetype indent on  " load filetype-specific indent files

set wildmenu        " visual autocomplete for command menu
set showmatch       " highlight matching [{()}]

" searching
set incsearch       " search as characters are entered
set hlsearch        " highlight matches
set encoding=utf-8
set vb                          " turn on the "visual bell" - which is much quieter than the "audio blink"
set ruler                       " show the cursor position all the time
set laststatus=2                " make the last line where the status is two lines deep so you can see status always
set backspace=indent,eol,start  " make that backspace key work the way it should
set nocompatible                " vi compatible is LAME
set background=dark             " Use colours that work well on a dark background (Console is usually black)
set showmode                    " show the current mode
set number

if has('gui_running')
  set nowritebackup
  set nobackup
  set guifont=DejaVu_Sans_Mono:h10:cANSI
endif


" movement > move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $
" $/^ doesn't do anything
" nnoremap $ <nop>
" nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]

" open in browser
" nnoremap <silent> <F5> :!start file://C:/Users/<your username here>/AppData/Local/Google/Chrome/Application/chrome.exe %:p<CR>
nnoremap <silent> <F12> :!start C:/Users/mdevries/AppData/Local/Google/Chrome/Application/chrome.exe %:p<CR>
nnoremap <silent> <F11> :!start "C:/Program Files (x86)/Mozilla Firefox/firefox.exe" %:p<CR>
