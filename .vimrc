syntax on
filetype plugin on
filetype indent on
set tildeop
"set cindent
"set smartindent 
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab
set pastetoggle=<F2>
set hidden
set nu
set title
set hlsearch
set tags=tags;/
set nocompatible

imap jj <esc>
map <space> i <esc>l
map g @
map J <pageDown>
map K <pageUp>
map gl :bn<cr>
map gh :bp<cr>
map ga :!align<cr>
map gs :!commenter<cr>
map gj :join<cr>
map H ^
map L $
map <F9> :!/usr/bin/env python %<cr>
map <F8> :let @2=".!pylint " . expand("%")<cr>:enew<cr>:@2<cr><cr>
imap <S-Tab> <c-p>


:inoremap # X<BS>#

au BufRead,BufNewFile *.py hi introspect ctermfg=white
au BufRead,BufNewFile *.py syn match introspect /\zsself\|cls\ze/
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 cindent smartindent
autocmd FileType haskell setlocal shiftwidth=2 tabstop=2 cindent smartindent
