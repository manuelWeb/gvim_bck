" insatll plugin in vim/vimfiles/bundle
call pathogen#infect()

" txt format
set fileencoding=utf-8
set encoding=utf-8

" view in browser
nnoremap <silent> <F12> :update<Bar>silent !start "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" "file://%:p"<CR>
nnoremap <silent> <F11> :update<Bar>silent !start "C:\Users\mdevries\AppData\Local\Google\Chrome\Application\chrome.exe" "file://%:p"<CR>

" prevent backup
set nobackup
set nowritebackup
" no swap files
set noswapfile

" Tab navigation like Firefox.
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

set t_Co=256
syntax enable       " Active la coloration syntaxique
syntax on           " turn syntax highlighting on by default
