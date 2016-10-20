" set shell=bash
" set switchbuf=usetab
nnoremap <F8> :sbnext<CR>
nnoremap <S-F8> :sbprevious<CR>

set nocompatible
" Activation de pathogen > !important @_vimrc

" Change la police
set guifont=Consolas:h13
set antialias
" set encoding=utf-8
" set fileencodings=utf-8
" set termencoding=utf-8

" multi cursor selection default is set selection=exclusive
set selection=inclusive

" open file in new tab
:au BufAdd,BufNewFile * nested tab sball

"Utilise la version sombre de Solarized
colorscheme distinguished
colorscheme solarized
" colorscheme desert
set background=dark

set hlsearch
set ai                          " set auto-indenting on for programming
set showmatch                   " automatically show matching brackets. works like it does in bbedit.
set vb                          " turn on the "visual bell" - which is much quieter than the "audio blink"
set ruler                       " show the cursor position all the time
set laststatus=2                " make the last line where the status is two lines deep so you can see status always
set backspace=indent,eol,start  " make that backspace key work the way it should
set showmode                    " show the current mode

" Active les comportements specifiques aux types de fichiers comme
" la syntaxe et l'indentation
filetype on
filetype plugin on
filetype indent on
" taille indentation
:set shiftwidth=2
:set autoindent
:set smartindent
"setlocal tabstop=2
" afficher les num de ligne
set number

" Activation lancement de vim
" autocmd vimenter * NERDTree

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

" prevent backup
set nobackup
set nowritebackup
" no swap files
set noswapfile

" slim highlight
autocmd BufNewFile,BufRead *.slim set ft=slim
" NEERDtree close if only NEERDtree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" shortkey 
" NEERDtree
map <C-nt> :NERDTreeToggle<CR>
" dico
:setlocal spell spelllang=fr
" no blank line on close
autocmd FileType * setlocal noeol binary

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" vim-clear-last-search-highlighting
nnoremap <esc> :noh<return><esc>