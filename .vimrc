set tildeop
set smartindent 
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab
set pastetoggle=<F2>
set hidden
set nu
set title
set hlsearch
imap jj <esc>
map <space> i <esc>l
map g @
map J <pageDown>
map K <pageUp>
map gl :bn<cr>
map gh :bp<cr>
map gb :!addBlurb.py<cr>
map ga :!align_equals<cr>
map gs :!splitcomma<cr>
map gj :join<cr>
map H ^
map L $
map <F9> :!/usr/bin/python %<cr>
map <F8> :let @2=".!pylint " . expand("%")<cr>:enew<cr>:@2<cr><cr>
imap <S-Tab> <c-p>


:inoremap # X<BS>#

au BufRead,BufNewFile *.py hi introspect ctermfg=white
au BufRead,BufNewFile *.py syn match introspect /\zsself\|cls\ze/
